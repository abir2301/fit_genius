// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hp _$HpFromJson(Map<String, dynamic> json) {
  return _Hp.fromJson(json);
}

/// @nodoc
mixin _$Hp {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HpCopyWith<Hp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HpCopyWith<$Res> {
  factory $HpCopyWith(Hp value, $Res Function(Hp) then) =
      _$HpCopyWithImpl<$Res, Hp>;
  @useResult
  $Res call({String name, String type});
}

/// @nodoc
class _$HpCopyWithImpl<$Res, $Val extends Hp> implements $HpCopyWith<$Res> {
  _$HpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HpCopyWith<$Res> implements $HpCopyWith<$Res> {
  factory _$$_HpCopyWith(_$_Hp value, $Res Function(_$_Hp) then) =
      __$$_HpCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String type});
}

/// @nodoc
class __$$_HpCopyWithImpl<$Res> extends _$HpCopyWithImpl<$Res, _$_Hp>
    implements _$$_HpCopyWith<$Res> {
  __$$_HpCopyWithImpl(_$_Hp _value, $Res Function(_$_Hp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_$_Hp(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Hp implements _Hp {
  const _$_Hp({required this.name, required this.type});

  factory _$_Hp.fromJson(Map<String, dynamic> json) => _$$_HpFromJson(json);

  @override
  final String name;
  @override
  final String type;

  @override
  String toString() {
    return 'Hp(name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hp &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HpCopyWith<_$_Hp> get copyWith =>
      __$$_HpCopyWithImpl<_$_Hp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HpToJson(
      this,
    );
  }
}

abstract class _Hp implements Hp {
  const factory _Hp({required final String name, required final String type}) =
      _$_Hp;

  factory _Hp.fromJson(Map<String, dynamic> json) = _$_Hp.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_HpCopyWith<_$_Hp> get copyWith => throw _privateConstructorUsedError;
}

Hps _$HpsFromJson(Map<String, dynamic> json) {
  return _Hps.fromJson(json);
}

/// @nodoc
mixin _$Hps {
  List<Hp> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HpsCopyWith<Hps> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HpsCopyWith<$Res> {
  factory $HpsCopyWith(Hps value, $Res Function(Hps) then) =
      _$HpsCopyWithImpl<$Res, Hps>;
  @useResult
  $Res call({List<Hp> data});
}

/// @nodoc
class _$HpsCopyWithImpl<$Res, $Val extends Hps> implements $HpsCopyWith<$Res> {
  _$HpsCopyWithImpl(this._value, this._then);

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
              as List<Hp>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HpsCopyWith<$Res> implements $HpsCopyWith<$Res> {
  factory _$$_HpsCopyWith(_$_Hps value, $Res Function(_$_Hps) then) =
      __$$_HpsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Hp> data});
}

/// @nodoc
class __$$_HpsCopyWithImpl<$Res> extends _$HpsCopyWithImpl<$Res, _$_Hps>
    implements _$$_HpsCopyWith<$Res> {
  __$$_HpsCopyWithImpl(_$_Hps _value, $Res Function(_$_Hps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Hps(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Hp>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Hps implements _Hps {
  const _$_Hps({required final List<Hp> data}) : _data = data;

  factory _$_Hps.fromJson(Map<String, dynamic> json) => _$$_HpsFromJson(json);

  final List<Hp> _data;
  @override
  List<Hp> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'Hps(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hps &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HpsCopyWith<_$_Hps> get copyWith =>
      __$$_HpsCopyWithImpl<_$_Hps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HpsToJson(
      this,
    );
  }
}

abstract class _Hps implements Hps {
  const factory _Hps({required final List<Hp> data}) = _$_Hps;

  factory _Hps.fromJson(Map<String, dynamic> json) = _$_Hps.fromJson;

  @override
  List<Hp> get data;
  @override
  @JsonKey(ignore: true)
  _$$_HpsCopyWith<_$_Hps> get copyWith => throw _privateConstructorUsedError;
}
