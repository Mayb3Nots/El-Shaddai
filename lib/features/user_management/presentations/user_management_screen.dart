import 'package:el_shaddai/core/router/router.dart';
import 'package:el_shaddai/core/theme.dart';
import 'package:el_shaddai/core/utility/date_time_range.dart';
import 'package:el_shaddai/features/auth/widgets/confirm_button.dart';
import 'package:el_shaddai/features/home/widgets/general_drawer.dart';
import 'package:el_shaddai/features/user_management/controller/user_management_controller.dart';
import 'package:el_shaddai/features/user_management/repository/user_management_repository.dart';
import 'package:el_shaddai/models/user_model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class UserManagementScreen extends ConsumerStatefulWidget {
  const UserManagementScreen({super.key});

  @override
  ConsumerState createState() => _UserManagementScreenState();
}

class _UserManagementScreenState extends ConsumerState<UserManagementScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final controller = ref.read(userManagementControllerProvider.notifier);
    final users =
        ref.watch(usersByRoleProvider(searchTerm: _searchController.text));

    return Scaffold(
        drawer: const GeneralDrawer(),
        appBar: AppBar(
          title: const Text('User Management'),
        ),
        body: Center(
          child: users.when(
              data: (data) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _searchController,
                        decoration: const InputDecoration(
                          labelText: "Search Users",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(),
                        ),
                        onSubmitted: (value) {
                          setState(() {}); // Refresh state when search changes
                        },
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          final user = data[index];
                          return ListTile(
                            onTap: () {
                              ProfileRoute(user).push(context);
                            },
                            title: Text(user.name),
                            subtitle: Text(user.role.name.capitalize()),
                            trailing: _PopMenuButton(
                                user: user, ref: ref, controller: controller),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
              error: (x, s) {
                throw x;
              },
              loading: () => const CircularProgressIndicator()),
        ));
  }
}

class _PopMenuButton extends StatelessWidget {
  const _PopMenuButton({
    required this.user,
    required this.ref,
    required this.controller,
  });

  final UserModel user;

  final WidgetRef ref;
  final UserManagementController controller;

  @override
  Widget build(BuildContext context) {
    const height = 600.0;
    const width = 300.0;
    return PopupMenuButton<String>(
      itemBuilder: (BuildContext context) => [
        PopupMenuItem(
          child: const Row(children: [
            Icon(
              Icons.supervised_user_circle_sharp,
              size: 20,
            ),
            Gap(5),
            Text('Role ')
          ]),
          onTap: () {
            _showChangeRoleDialog(context);
          },
        ),
        PopupMenuItem(
          child: const Row(children: [
            Icon(
              Icons.delete_forever,
              size: 20,
            ),
            Gap(5),
            Text('Delete ')
          ]),
          onTap: () {
            showDialog(
              barrierColor: Colors.black.withOpac(0.3),
              context: context,
              builder: (context) {
                return ConfirmButton(
                  confirmText: 'Delete',
                  cancelText: 'Cancel',
                  description: 'Delete User? This cannot be reverted.',
                  confirmAction: () {
                    controller.deleteUser(user.uid);
                    context.pop();
                  },
                );
              },
            );
          },
        ),
      ],
      icon: const Icon(Icons.more_vert), // Three-dot menu icon
    );
  }

  void _showChangeRoleDialog(BuildContext context) {
    UserRole selectedRole = user.role; // Track selected role

    showDialog(
      context: context,
      barrierColor: Colors.black.withOpac(0.5), // Dim background
      barrierDismissible: true, // Dismiss when tapping outside
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return GestureDetector(
              behavior:
                  HitTestBehavior.opaque, // Allow taps outside to close dialog
              onTap: () => context.pop(), // Close dialog when tapped outside
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {}, // Prevent taps inside from closing the dialog
                    child: ToggleButtons(
                      direction: Axis.vertical,
                      isSelected: UserRole.values
                          .map((role) => role == selectedRole)
                          .toList(),
                      onPressed: (index) {
                        setState(() {
                          selectedRole =
                              UserRole.values[index]; // Update selected role
                        });

                        controller.changeUserRole(user.uid, selectedRole);
                        context.pop(); // Close dialog after selection
                      },
                      borderRadius: BorderRadius.circular(10),
                      selectedColor: Colors.white,
                      fillColor: Theme.of(context).primaryColor,
                      children: UserRole.values.map((role) {
                        bool isSelected =
                            role == selectedRole; // Check selection
                        return Container(
                            color: isSelected
                                ? Colors.transparent
                                : Colors.black.withOpac(0.4),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Text(
                              role.name.capitalize(),
                            ));
                      }).toList(),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
