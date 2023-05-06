// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Workout _$WorkoutFromJson(Map<String, dynamic> json) {
  return _Workout.fromJson(json);
}

/// @nodoc
mixin _$Workout {
  String get desc => throw _privateConstructorUsedError;
  List<Excercice> get excercices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutCopyWith<Workout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutCopyWith<$Res> {
  factory $WorkoutCopyWith(Workout value, $Res Function(Workout) then) =
      _$WorkoutCopyWithImpl<$Res, Workout>;
  @useResult
  $Res call({String desc, List<Excercice> excercices});
}

/// @nodoc
class _$WorkoutCopyWithImpl<$Res, $Val extends Workout>
    implements $WorkoutCopyWith<$Res> {
  _$WorkoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desc = null,
    Object? excercices = null,
  }) {
    return _then(_value.copyWith(
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      excercices: null == excercices
          ? _value.excercices
          : excercices // ignore: cast_nullable_to_non_nullable
              as List<Excercice>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkoutCopyWith<$Res> implements $WorkoutCopyWith<$Res> {
  factory _$$_WorkoutCopyWith(
          _$_Workout value, $Res Function(_$_Workout) then) =
      __$$_WorkoutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String desc, List<Excercice> excercices});
}

/// @nodoc
class __$$_WorkoutCopyWithImpl<$Res>
    extends _$WorkoutCopyWithImpl<$Res, _$_Workout>
    implements _$$_WorkoutCopyWith<$Res> {
  __$$_WorkoutCopyWithImpl(_$_Workout _value, $Res Function(_$_Workout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desc = null,
    Object? excercices = null,
  }) {
    return _then(_$_Workout(
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      excercices: null == excercices
          ? _value._excercices
          : excercices // ignore: cast_nullable_to_non_nullable
              as List<Excercice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Workout implements _Workout {
  const _$_Workout(
      {required this.desc, required final List<Excercice> excercices})
      : _excercices = excercices;

  factory _$_Workout.fromJson(Map<String, dynamic> json) =>
      _$$_WorkoutFromJson(json);

  @override
  final String desc;
  final List<Excercice> _excercices;
  @override
  List<Excercice> get excercices {
    if (_excercices is EqualUnmodifiableListView) return _excercices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_excercices);
  }

  @override
  String toString() {
    return 'Workout(desc: $desc, excercices: $excercices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Workout &&
            (identical(other.desc, desc) || other.desc == desc) &&
            const DeepCollectionEquality()
                .equals(other._excercices, _excercices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, desc, const DeepCollectionEquality().hash(_excercices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutCopyWith<_$_Workout> get copyWith =>
      __$$_WorkoutCopyWithImpl<_$_Workout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkoutToJson(
      this,
    );
  }
}

abstract class _Workout implements Workout {
  const factory _Workout(
      {required final String desc,
      required final List<Excercice> excercices}) = _$_Workout;

  factory _Workout.fromJson(Map<String, dynamic> json) = _$_Workout.fromJson;

  @override
  String get desc;
  @override
  List<Excercice> get excercices;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutCopyWith<_$_Workout> get copyWith =>
      throw _privateConstructorUsedError;
}
