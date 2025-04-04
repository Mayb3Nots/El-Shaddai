// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zoom_meeting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ZoomMeetingModel _$ZoomMeetingModelFromJson(Map<String, dynamic> json) {
  return _ZoomMeetingModel.fromJson(json);
}

/// @nodoc
mixin _$ZoomMeetingModel {
  String? get topic => throw _privateConstructorUsedError;
  @JsonKey(name: 'agenda')
  String? get description => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  @RecurrenceConfigurationConverter()
  @JsonKey(name: 'recurrence')
  RecurrenceConfigurationModel? get recurrenceConfiguration =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  DateTime get startTime => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 2)
  int get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZoomMeetingModelCopyWith<ZoomMeetingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZoomMeetingModelCopyWith<$Res> {
  factory $ZoomMeetingModelCopyWith(
          ZoomMeetingModel value, $Res Function(ZoomMeetingModel) then) =
      _$ZoomMeetingModelCopyWithImpl<$Res, ZoomMeetingModel>;
  @useResult
  $Res call(
      {String? topic,
      @JsonKey(name: 'agenda') String? description,
      int? duration,
      @RecurrenceConfigurationConverter()
      @JsonKey(name: 'recurrence')
      RecurrenceConfigurationModel? recurrenceConfiguration,
      @JsonKey(name: 'start_time') DateTime startTime,
      @JsonKey(defaultValue: 2) int type});

  $RecurrenceConfigurationModelCopyWith<$Res>? get recurrenceConfiguration;
}

/// @nodoc
class _$ZoomMeetingModelCopyWithImpl<$Res, $Val extends ZoomMeetingModel>
    implements $ZoomMeetingModelCopyWith<$Res> {
  _$ZoomMeetingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = freezed,
    Object? description = freezed,
    Object? duration = freezed,
    Object? recurrenceConfiguration = freezed,
    Object? startTime = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      recurrenceConfiguration: freezed == recurrenceConfiguration
          ? _value.recurrenceConfiguration
          : recurrenceConfiguration // ignore: cast_nullable_to_non_nullable
              as RecurrenceConfigurationModel?,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecurrenceConfigurationModelCopyWith<$Res>? get recurrenceConfiguration {
    if (_value.recurrenceConfiguration == null) {
      return null;
    }

    return $RecurrenceConfigurationModelCopyWith<$Res>(
        _value.recurrenceConfiguration!, (value) {
      return _then(_value.copyWith(recurrenceConfiguration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ZoomMeetingModelImplCopyWith<$Res>
    implements $ZoomMeetingModelCopyWith<$Res> {
  factory _$$ZoomMeetingModelImplCopyWith(_$ZoomMeetingModelImpl value,
          $Res Function(_$ZoomMeetingModelImpl) then) =
      __$$ZoomMeetingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? topic,
      @JsonKey(name: 'agenda') String? description,
      int? duration,
      @RecurrenceConfigurationConverter()
      @JsonKey(name: 'recurrence')
      RecurrenceConfigurationModel? recurrenceConfiguration,
      @JsonKey(name: 'start_time') DateTime startTime,
      @JsonKey(defaultValue: 2) int type});

  @override
  $RecurrenceConfigurationModelCopyWith<$Res>? get recurrenceConfiguration;
}

/// @nodoc
class __$$ZoomMeetingModelImplCopyWithImpl<$Res>
    extends _$ZoomMeetingModelCopyWithImpl<$Res, _$ZoomMeetingModelImpl>
    implements _$$ZoomMeetingModelImplCopyWith<$Res> {
  __$$ZoomMeetingModelImplCopyWithImpl(_$ZoomMeetingModelImpl _value,
      $Res Function(_$ZoomMeetingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = freezed,
    Object? description = freezed,
    Object? duration = freezed,
    Object? recurrenceConfiguration = freezed,
    Object? startTime = null,
    Object? type = null,
  }) {
    return _then(_$ZoomMeetingModelImpl(
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      recurrenceConfiguration: freezed == recurrenceConfiguration
          ? _value.recurrenceConfiguration
          : recurrenceConfiguration // ignore: cast_nullable_to_non_nullable
              as RecurrenceConfigurationModel?,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZoomMeetingModelImpl extends _ZoomMeetingModel {
  _$ZoomMeetingModelImpl(
      {this.topic,
      @JsonKey(name: 'agenda') this.description,
      this.duration,
      @RecurrenceConfigurationConverter()
      @JsonKey(name: 'recurrence')
      this.recurrenceConfiguration,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(defaultValue: 2) required this.type})
      : super._();

  factory _$ZoomMeetingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZoomMeetingModelImplFromJson(json);

  @override
  final String? topic;
  @override
  @JsonKey(name: 'agenda')
  final String? description;
  @override
  final int? duration;
  @override
  @RecurrenceConfigurationConverter()
  @JsonKey(name: 'recurrence')
  final RecurrenceConfigurationModel? recurrenceConfiguration;
  @override
  @JsonKey(name: 'start_time')
  final DateTime startTime;
  @override
  @JsonKey(defaultValue: 2)
  final int type;

  @override
  String toString() {
    return 'ZoomMeetingModel(topic: $topic, description: $description, duration: $duration, recurrenceConfiguration: $recurrenceConfiguration, startTime: $startTime, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZoomMeetingModelImpl &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(
                    other.recurrenceConfiguration, recurrenceConfiguration) ||
                other.recurrenceConfiguration == recurrenceConfiguration) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topic, description, duration,
      recurrenceConfiguration, startTime, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZoomMeetingModelImplCopyWith<_$ZoomMeetingModelImpl> get copyWith =>
      __$$ZoomMeetingModelImplCopyWithImpl<_$ZoomMeetingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZoomMeetingModelImplToJson(
      this,
    );
  }
}

abstract class _ZoomMeetingModel extends ZoomMeetingModel {
  factory _ZoomMeetingModel(
          {final String? topic,
          @JsonKey(name: 'agenda') final String? description,
          final int? duration,
          @RecurrenceConfigurationConverter()
          @JsonKey(name: 'recurrence')
          final RecurrenceConfigurationModel? recurrenceConfiguration,
          @JsonKey(name: 'start_time') required final DateTime startTime,
          @JsonKey(defaultValue: 2) required final int type}) =
      _$ZoomMeetingModelImpl;
  _ZoomMeetingModel._() : super._();

  factory _ZoomMeetingModel.fromJson(Map<String, dynamic> json) =
      _$ZoomMeetingModelImpl.fromJson;

  @override
  String? get topic;
  @override
  @JsonKey(name: 'agenda')
  String? get description;
  @override
  int? get duration;
  @override
  @RecurrenceConfigurationConverter()
  @JsonKey(name: 'recurrence')
  RecurrenceConfigurationModel? get recurrenceConfiguration;
  @override
  @JsonKey(name: 'start_time')
  DateTime get startTime;
  @override
  @JsonKey(defaultValue: 2)
  int get type;
  @override
  @JsonKey(ignore: true)
  _$$ZoomMeetingModelImplCopyWith<_$ZoomMeetingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
