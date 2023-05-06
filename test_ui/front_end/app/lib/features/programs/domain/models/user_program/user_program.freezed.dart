// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_program.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProgram _$UserProgramFromJson(Map<String, dynamic> json) {
  return _UserProgram.fromJson(json);
}

/// @nodoc
mixin _$UserProgram {
  int get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  double? get objectif => throw _privateConstructorUsedError;
  double? get result => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String get programId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProgramCopyWith<UserProgram> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProgramCopyWith<$Res> {
  factory $UserProgramCopyWith(
          UserProgram value, $Res Function(UserProgram) then) =
      _$UserProgramCopyWithImpl<$Res, UserProgram>;
  @useResult
  $Res call(
      {int id,
      DateTime date,
      double? objectif,
      double? result,
      String? comment,
      String programId});
}

/// @nodoc
class _$UserProgramCopyWithImpl<$Res, $Val extends UserProgram>
    implements $UserProgramCopyWith<$Res> {
  _$UserProgramCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? objectif = freezed,
    Object? result = freezed,
    Object? comment = freezed,
    Object? programId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      objectif: freezed == objectif
          ? _value.objectif
          : objectif // ignore: cast_nullable_to_non_nullable
              as double?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as double?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserProgramCopyWith<$Res>
    implements $UserProgramCopyWith<$Res> {
  factory _$$_UserProgramCopyWith(
          _$_UserProgram value, $Res Function(_$_UserProgram) then) =
      __$$_UserProgramCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime date,
      double? objectif,
      double? result,
      String? comment,
      String programId});
}

/// @nodoc
class __$$_UserProgramCopyWithImpl<$Res>
    extends _$UserProgramCopyWithImpl<$Res, _$_UserProgram>
    implements _$$_UserProgramCopyWith<$Res> {
  __$$_UserProgramCopyWithImpl(
      _$_UserProgram _value, $Res Function(_$_UserProgram) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? objectif = freezed,
    Object? result = freezed,
    Object? comment = freezed,
    Object? programId = null,
  }) {
    return _then(_$_UserProgram(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      objectif: freezed == objectif
          ? _value.objectif
          : objectif // ignore: cast_nullable_to_non_nullable
              as double?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as double?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProgram implements _UserProgram {
  const _$_UserProgram(
      {required this.id,
      required this.date,
      this.objectif,
      this.result,
      this.comment,
      required this.programId});

  factory _$_UserProgram.fromJson(Map<String, dynamic> json) =>
      _$$_UserProgramFromJson(json);

  @override
  final int id;
  @override
  final DateTime date;
  @override
  final double? objectif;
  @override
  final double? result;
  @override
  final String? comment;
  @override
  final String programId;

  @override
  String toString() {
    return 'UserProgram(id: $id, date: $date, objectif: $objectif, result: $result, comment: $comment, programId: $programId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProgram &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.objectif, objectif) ||
                other.objectif == objectif) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.programId, programId) ||
                other.programId == programId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, date, objectif, result, comment, programId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserProgramCopyWith<_$_UserProgram> get copyWith =>
      __$$_UserProgramCopyWithImpl<_$_UserProgram>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProgramToJson(
      this,
    );
  }
}

abstract class _UserProgram implements UserProgram {
  const factory _UserProgram(
      {required final int id,
      required final DateTime date,
      final double? objectif,
      final double? result,
      final String? comment,
      required final String programId}) = _$_UserProgram;

  factory _UserProgram.fromJson(Map<String, dynamic> json) =
      _$_UserProgram.fromJson;

  @override
  int get id;
  @override
  DateTime get date;
  @override
  double? get objectif;
  @override
  double? get result;
  @override
  String? get comment;
  @override
  String get programId;
  @override
  @JsonKey(ignore: true)
  _$$_UserProgramCopyWith<_$_UserProgram> get copyWith =>
      throw _privateConstructorUsedError;
}

UserPerformance _$UserPerformanceFromJson(Map<String, dynamic> json) {
  return _UserPerformance.fromJson(json);
}

/// @nodoc
mixin _$UserPerformance {
  List<UserProgram> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPerformanceCopyWith<UserPerformance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPerformanceCopyWith<$Res> {
  factory $UserPerformanceCopyWith(
          UserPerformance value, $Res Function(UserPerformance) then) =
      _$UserPerformanceCopyWithImpl<$Res, UserPerformance>;
  @useResult
  $Res call({List<UserProgram> data});
}

/// @nodoc
class _$UserPerformanceCopyWithImpl<$Res, $Val extends UserPerformance>
    implements $UserPerformanceCopyWith<$Res> {
  _$UserPerformanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserProgram>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserPerformanceCopyWith<$Res>
    implements $UserPerformanceCopyWith<$Res> {
  factory _$$_UserPerformanceCopyWith(
          _$_UserPerformance value, $Res Function(_$_UserPerformance) then) =
      __$$_UserPerformanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserProgram> data});
}

/// @nodoc
class __$$_UserPerformanceCopyWithImpl<$Res>
    extends _$UserPerformanceCopyWithImpl<$Res, _$_UserPerformance>
    implements _$$_UserPerformanceCopyWith<$Res> {
  __$$_UserPerformanceCopyWithImpl(
      _$_UserPerformance _value, $Res Function(_$_UserPerformance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_UserPerformance(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserProgram>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserPerformance implements _UserPerformance {
  const _$_UserPerformance({required final List<UserProgram> data})
      : _data = data;

  factory _$_UserPerformance.fromJson(Map<String, dynamic> json) =>
      _$$_UserPerformanceFromJson(json);

  final List<UserProgram> _data;
  @override
  List<UserProgram> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'UserPerformance(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserPerformance &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserPerformanceCopyWith<_$_UserPerformance> get copyWith =>
      __$$_UserPerformanceCopyWithImpl<_$_UserPerformance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserPerformanceToJson(
      this,
    );
  }
}

abstract class _UserPerformance implements UserPerformance {
  const factory _UserPerformance({required final List<UserProgram> data}) =
      _$_UserPerformance;

  factory _UserPerformance.fromJson(Map<String, dynamic> json) =
      _$_UserPerformance.fromJson;

  @override
  List<UserProgram> get data;
  @override
  @JsonKey(ignore: true)
  _$$_UserPerformanceCopyWith<_$_UserPerformance> get copyWith =>
      throw _privateConstructorUsedError;
}
