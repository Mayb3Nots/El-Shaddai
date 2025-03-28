// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      name: json['name'] as String,
      uid: json['uid'] as String,
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
      lastName: json['lastName'] as String?,
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      nationality: json['nationality'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      description: json['description'] as String?,
      address: json['address'] as String?,
      birthAddress: json['birthAddress'] as String?,
      church: json['church'] as String?,
      beleifInGod: json['beleifInGod'] as String?,
      prayerNetwork: json['prayerNetwork'] as String?,
      definitionOfGod: json['definitionOfGod'] as String?,
      godsCalling: json['godsCalling'] as String?,
      recommendation: json['recommendation'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'uid': instance.uid,
      'role': _$UserRoleEnumMap[instance.role]!,
      'lastName': instance.lastName,
      'image': instance.image,
      'nationality': instance.nationality,
      'phoneNumber': instance.phoneNumber,
      'description': instance.description,
      'address': instance.address,
      'birthAddress': instance.birthAddress,
      'church': instance.church,
      'beleifInGod': instance.beleifInGod,
      'prayerNetwork': instance.prayerNetwork,
      'definitionOfGod': instance.definitionOfGod,
      'godsCalling': instance.godsCalling,
      'recommendation': instance.recommendation,
    };

const _$UserRoleEnumMap = {
  UserRole.admin: 'admin',
  UserRole.watchman: 'watchman',
  UserRole.watchLeader: 'watchLeader',
  UserRole.intercessor: 'intercessor',
};

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uid': instance.uid,
      'role': _$UserRoleEnumMap[instance.role]!,
      'lastName': instance.lastName,
      'image': instance.image,
      'nationality': instance.nationality,
      'phoneNumber': instance.phoneNumber,
      'description': instance.description,
      'address': instance.address,
      'birthAddress': instance.birthAddress,
      'church': instance.church,
      'beleifInGod': instance.beleifInGod,
      'prayerNetwork': instance.prayerNetwork,
      'definitionOfGod': instance.definitionOfGod,
      'godsCalling': instance.godsCalling,
      'recommendation': instance.recommendation,
    };
