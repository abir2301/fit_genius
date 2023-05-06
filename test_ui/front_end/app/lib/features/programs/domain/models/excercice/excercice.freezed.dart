// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'excercice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Excercice _$ExcerciceFromJson(Map<String, dynamic> json) {
  return _Excercice.fromJson(json);
}

/// @nodoc
mixin _$Excercice {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExcerciceCopyWith<Excercice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExcerciceCopyWith<$Res> {
  factory $ExcerciceCopyWith(Excercice value, $Res Function(Excercice) then) =
      _$ExcerciceCopyWithImpl<$Res, Excercice>;
  @useResult
  $Res call({String name, String image, int duration, bool isDone});
}

/// @nodoc
class _$ExcerciceCopyWithImpl<$Res, $Val extends Excercice>
    implements $ExcerciceCopyWith<$Res> {
  _$ExcerciceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? duration = null,
    Object? isDone = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExcerciceCopyWith<$Res> implements $ExcerciceCopyWith<$Res> {
  factory _$$_ExcerciceCopyWith(
          _$_Excercice value, $Res Function(_$_Excercice) then) =
      __$$_ExcerciceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String image, int duration, bool isDone});
}

/// @nodoc
class __$$_ExcerciceCopyWithImpl<$Res>
    extends _$ExcerciceCopyWithImpl<$Res, _$_Excercice>
    implements _$$_ExcerciceCopyWith<$Res> {
  __$$_ExcerciceCopyWithImpl(
      _$_Excercice _value, $Res Function(_$_Excercice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? duration = null,
    Object? isDone = null,
  }) {
    return _then(_$_Excercice(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Excercice implements _Excercice {
  const _$_Excercice(
      {required this.name,
      required this.image,
      required this.duration,
      required this.isDone});

  factory _$_Excercice.fromJson(Map<String, dynamic> json) =>
      _$$_ExcerciceFromJson(json);

  @override
  final String name;
  @override
  final String image;
  @override
  final int duration;
  @override
  final bool isDone;

  @override
  String toString() {
    return 'Excercice(name: $name, image: $image, duration: $duration, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Excercice &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, image, duration, isDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExcerciceCopyWith<_$_Excercice> get copyWith =>
      __$$_ExcerciceCopyWithImpl<_$_Excercice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExcerciceToJson(
      this,
    );
  }
}

abstract class _Excercice implements Excercice {
  const factory _Excercice(
      {required final String name,
      required final String image,
      required final int duration,
      required final bool isDone}) = _$_Excercice;

  factory _Excercice.fromJson(Map<String, dynamic> json) =
      _$_Excercice.fromJson;

  @override
  String get name;
  @override
  String get image;
  @override
  int get duration;
  @override
  bool get isDone;
  @override
  @JsonKey(ignore: true)
  _$$_ExcerciceCopyWith<_$_Excercice> get copyWith =>
      throw _privateConstructorUsedError;
}
