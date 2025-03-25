import 'package:el_shaddai/features/auth/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInButton extends ConsumerWidget {
  const SignInButton({required this.mode, super.key});
  final String mode;
  void signInWithGoogle(BuildContext context, WidgetRef ref) {
    ref.read(authControllerProvider.notifier).signInWithGoogle(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isGoogle = mode == 'Google';
    final width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: width - 20,
      height: 50,
      child: ElevatedButton.icon(
        onPressed: () {
          isGoogle
              ? signInWithGoogle(context, ref)
              : print('Sign in with Apple'); //Add apple heere
        },
        icon: isGoogle
            ? Image.asset(
                'assets/logo/google.png',
                height: 40,
                width: 40,
              )
            : Padding(
                padding: EdgeInsets.all(5),
                child: Image.asset(
                  'assets/logo/apple.png',
                  height: 40,
                  width: 40,
                  color: Colors.white,
                ),
              ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
        label: Text(
          'Continue with $mode',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
