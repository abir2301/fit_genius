// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String error) error,
    required TResult Function() postingProfile,
    required TResult Function(Profile profile) postedProfile,
    required TResult Function(List<String>? errors, String? error) postError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(String error)? error,
    TResult? Function()? postingProfile,
    TResult? Function(Profile profile)? postedProfile,
    TResult? Function(List<String>? errors, String? error)? postError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String error)? error,
    TResult Function()? postingProfile,
    TResult Function(Profile profile)? postedProfile,
    TResult Function(List<String>? errors, String? error)? postError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInfoInitial value) initial,
    required TResult Function(_UserInfoStateLoading value) isLoading,
    required TResult Function(_UserInfoStateError value) error,
    required TResult Function(_UserInfoStatePostingProfile value)
        postingProfile,
    required TResult Function(_UserInfoStatePostedProfile value) postedProfile,
    required TResult Function(_UserInfoStatePostingProfileError value)
        postError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInfoInitial value)? initial,
    TResult? Function(_UserInfoStateLoading value)? isLoading,
    TResult? Function(_UserInfoStateError value)? error,
    TResult? Function(_UserInfoStatePostingProfile value)? postingProfile,
    TResult? Function(_UserInfoStatePostedProfile value)? postedProfile,
    TResult? Function(_UserInfoStatePostingProfileError value)? postError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInfoInitial value)? initial,
    TResult Function(_UserInfoStateLoading value)? isLoading,
    TResult Function(_UserInfoStateError value)? error,
    TResult Function(_UserInfoStatePostingProfile value)? postingProfile,
    TResult Function(_UserInfoStatePostedProfile value)? postedProfile,
    TResult Function(_UserInfoStatePostingProfileError value)? postError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoStateCopyWith<$Res> {
  factory $UserInfoStateCopyWith(
          UserInfoState value, $Res Function(UserInfoState) then) =
      _$UserInfoStateCopyWithImpl<$Res, UserInfoState>;
}

/// @nodoc
class _$UserInfoStateCopyWithImpl<$Res, $Val extends UserInfoState>
    implements $UserInfoStateCopyWith<$Res> {
  _$UserInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserInfoInitialCopyWith<$Res> {
  factory _$$_UserInfoInitialCopyWith(
          _$_UserInfoInitial value, $Res Function(_$_UserInfoInitial) then) =
      __$$_UserInfoInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserInfoInitialCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res, _$_UserInfoInitial>
    implements _$$_UserInfoInitialCopyWith<$Res> {
  __$$_UserInfoInitialCopyWithImpl(
      _$_UserInfoInitial _value, $Res Function(_$_UserInfoInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserInfoInitial
    with DiagnosticableTreeMixin
    implements _UserInfoInitial {
  const _$_UserInfoInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserInfoState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserInfoState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserInfoInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String error) error,
    required TResult Function() postingProfile,
    required TResult Function(Profile profile) postedProfile,
    required TResult Function(List<String>? errors, String? error) postError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(String error)? error,
    TResult? Function()? postingProfile,
    TResult? Function(Profile profile)? postedProfile,
    TResult? Function(List<String>? errors, String? error)? postError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String error)? error,
    TResult Function()? postingProfile,
    TResult Function(Profile profile)? postedProfile,
    TResult Function(List<String>? errors, String? error)? postError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInfoInitial value) initial,
    required TResult Function(_UserInfoStateLoading value) isLoading,
    required TResult Function(_UserInfoStateError value) error,
    required TResult Function(_UserInfoStatePostingProfile value)
        postingProfile,
    required TResult Function(_UserInfoStatePostedProfile value) postedProfile,
    required TResult Function(_UserInfoStatePostingProfileError value)
        postError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInfoInitial value)? initial,
    TResult? Function(_UserInfoStateLoading value)? isLoading,
    TResult? Function(_UserInfoStateError value)? error,
    TResult? Function(_UserInfoStatePostingProfile value)? postingProfile,
    TResult? Function(_UserInfoStatePostedProfile value)? postedProfile,
    TResult? Function(_UserInfoStatePostingProfileError value)? postError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInfoInitial value)? initial,
    TResult Function(_UserInfoStateLoading value)? isLoading,
    TResult Function(_UserInfoStateError value)? error,
    TResult Function(_UserInfoStatePostingProfile value)? postingProfile,
    TResult Function(_UserInfoStatePostedProfile value)? postedProfile,
    TResult Function(_UserInfoStatePostingProfileError value)? postError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UserInfoInitial implements UserInfoState {
  const factory _UserInfoInitial() = _$_UserInfoInitial;
}

/// @nodoc
abstract class _$$_UserInfoStateLoadingCopyWith<$Res> {
  factory _$$_UserInfoStateLoadingCopyWith(_$_UserInfoStateLoading value,
          $Res Function(_$_UserInfoStateLoading) then) =
      __$$_UserInfoStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserInfoStateLoadingCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res, _$_UserInfoStateLoading>
    implements _$$_UserInfoStateLoadingCopyWith<$Res> {
  __$$_UserInfoStateLoadingCopyWithImpl(_$_UserInfoStateLoading _value,
      $Res Function(_$_UserInfoStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserInfoStateLoading
    with DiagnosticableTreeMixin
    implements _UserInfoStateLoading {
  const _$_UserInfoStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserInfoState.isLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserInfoState.isLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserInfoStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String error) error,
    required TResult Function() postingProfile,
    required TResult Function(Profile profile) postedProfile,
    required TResult Function(List<String>? errors, String? error) postError,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(String error)? error,
    TResult? Function()? postingProfile,
    TResult? Function(Profile profile)? postedProfile,
    TResult? Function(List<String>? errors, String? error)? postError,
  }) {
    return isLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String error)? error,
    TResult Function()? postingProfile,
    TResult Function(Profile profile)? postedProfile,
    TResult Function(List<String>? errors, String? error)? postError,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInfoInitial value) initial,
    required TResult Function(_UserInfoStateLoading value) isLoading,
    required TResult Function(_UserInfoStateError value) error,
    required TResult Function(_UserInfoStatePostingProfile value)
        postingProfile,
    required TResult Function(_UserInfoStatePostedProfile value) postedProfile,
    required TResult Function(_UserInfoStatePostingProfileError value)
        postError,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInfoInitial value)? initial,
    TResult? Function(_UserInfoStateLoading value)? isLoading,
    TResult? Function(_UserInfoStateError value)? error,
    TResult? Function(_UserInfoStatePostingProfile value)? postingProfile,
    TResult? Function(_UserInfoStatePostedProfile value)? postedProfile,
    TResult? Function(_UserInfoStatePostingProfileError value)? postError,
  }) {
    return isLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInfoInitial value)? initial,
    TResult Function(_UserInfoStateLoading value)? isLoading,
    TResult Function(_UserInfoStateError value)? error,
    TResult Function(_UserInfoStatePostingProfile value)? postingProfile,
    TResult Function(_UserInfoStatePostedProfile value)? postedProfile,
    TResult Function(_UserInfoStatePostingProfileError value)? postError,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _UserInfoStateLoading implements UserInfoState {
  const factory _UserInfoStateLoading() = _$_UserInfoStateLoading;
}

/// @nodoc
abstract class _$$_UserInfoStateErrorCopyWith<$Res> {
  factory _$$_UserInfoStateErrorCopyWith(_$_UserInfoStateError value,
          $Res Function(_$_UserInfoStateError) then) =
      __$$_UserInfoStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_UserInfoStateErrorCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res, _$_UserInfoStateError>
    implements _$$_UserInfoStateErrorCopyWith<$Res> {
  __$$_UserInfoStateErrorCopyWithImpl(
      _$_UserInfoStateError _value, $Res Function(_$_UserInfoStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_UserInfoStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserInfoStateError
    with DiagnosticableTreeMixin
    implements _UserInfoStateError {
  const _$_UserInfoStateError({required this.error});

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserInfoState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserInfoState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInfoStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserInfoStateErrorCopyWith<_$_UserInfoStateError> get copyWith =>
      __$$_UserInfoStateErrorCopyWithImpl<_$_UserInfoStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String error) error,
    required TResult Function() postingProfile,
    required TResult Function(Profile profile) postedProfile,
    required TResult Function(List<String>? errors, String? error) postError,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(String error)? error,
    TResult? Function()? postingProfile,
    TResult? Function(Profile profile)? postedProfile,
    TResult? Function(List<String>? errors, String? error)? postError,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String error)? error,
    TResult Function()? postingProfile,
    TResult Function(Profile profile)? postedProfile,
    TResult Function(List<String>? errors, String? error)? postError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInfoInitial value) initial,
    required TResult Function(_UserInfoStateLoading value) isLoading,
    required TResult Function(_UserInfoStateError value) error,
    required TResult Function(_UserInfoStatePostingProfile value)
        postingProfile,
    required TResult Function(_UserInfoStatePostedProfile value) postedProfile,
    required TResult Function(_UserInfoStatePostingProfileError value)
        postError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInfoInitial value)? initial,
    TResult? Function(_UserInfoStateLoading value)? isLoading,
    TResult? Function(_UserInfoStateError value)? error,
    TResult? Function(_UserInfoStatePostingProfile value)? postingProfile,
    TResult? Function(_UserInfoStatePostedProfile value)? postedProfile,
    TResult? Function(_UserInfoStatePostingProfileError value)? postError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInfoInitial value)? initial,
    TResult Function(_UserInfoStateLoading value)? isLoading,
    TResult Function(_UserInfoStateError value)? error,
    TResult Function(_UserInfoStatePostingProfile value)? postingProfile,
    TResult Function(_UserInfoStatePostedProfile value)? postedProfile,
    TResult Function(_UserInfoStatePostingProfileError value)? postError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _UserInfoStateError implements UserInfoState {
  const factory _UserInfoStateError({required final String error}) =
      _$_UserInfoStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_UserInfoStateErrorCopyWith<_$_UserInfoStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserInfoStatePostingProfileCopyWith<$Res> {
  factory _$$_UserInfoStatePostingProfileCopyWith(
          _$_UserInfoStatePostingProfile value,
          $Res Function(_$_UserInfoStatePostingProfile) then) =
      __$$_UserInfoStatePostingProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserInfoStatePostingProfileCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res, _$_UserInfoStatePostingProfile>
    implements _$$_UserInfoStatePostingProfileCopyWith<$Res> {
  __$$_UserInfoStatePostingProfileCopyWithImpl(
      _$_UserInfoStatePostingProfile _value,
      $Res Function(_$_UserInfoStatePostingProfile) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserInfoStatePostingProfile
    with DiagnosticableTreeMixin
    implements _UserInfoStatePostingProfile {
  const _$_UserInfoStatePostingProfile();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserInfoState.postingProfile()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserInfoState.postingProfile'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInfoStatePostingProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String error) error,
    required TResult Function() postingProfile,
    required TResult Function(Profile profile) postedProfile,
    required TResult Function(List<String>? errors, String? error) postError,
  }) {
    return postingProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(String error)? error,
    TResult? Function()? postingProfile,
    TResult? Function(Profile profile)? postedProfile,
    TResult? Function(List<String>? errors, String? error)? postError,
  }) {
    return postingProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String error)? error,
    TResult Function()? postingProfile,
    TResult Function(Profile profile)? postedProfile,
    TResult Function(List<String>? errors, String? error)? postError,
    required TResult orElse(),
  }) {
    if (postingProfile != null) {
      return postingProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInfoInitial value) initial,
    required TResult Function(_UserInfoStateLoading value) isLoading,
    required TResult Function(_UserInfoStateError value) error,
    required TResult Function(_UserInfoStatePostingProfile value)
        postingProfile,
    required TResult Function(_UserInfoStatePostedProfile value) postedProfile,
    required TResult Function(_UserInfoStatePostingProfileError value)
        postError,
  }) {
    return postingProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInfoInitial value)? initial,
    TResult? Function(_UserInfoStateLoading value)? isLoading,
    TResult? Function(_UserInfoStateError value)? error,
    TResult? Function(_UserInfoStatePostingProfile value)? postingProfile,
    TResult? Function(_UserInfoStatePostedProfile value)? postedProfile,
    TResult? Function(_UserInfoStatePostingProfileError value)? postError,
  }) {
    return postingProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInfoInitial value)? initial,
    TResult Function(_UserInfoStateLoading value)? isLoading,
    TResult Function(_UserInfoStateError value)? error,
    TResult Function(_UserInfoStatePostingProfile value)? postingProfile,
    TResult Function(_UserInfoStatePostedProfile value)? postedProfile,
    TResult Function(_UserInfoStatePostingProfileError value)? postError,
    required TResult orElse(),
  }) {
    if (postingProfile != null) {
      return postingProfile(this);
    }
    return orElse();
  }
}

abstract class _UserInfoStatePostingProfile implements UserInfoState {
  const factory _UserInfoStatePostingProfile() = _$_UserInfoStatePostingProfile;
}

/// @nodoc
abstract class _$$_UserInfoStatePostedProfileCopyWith<$Res> {
  factory _$$_UserInfoStatePostedProfileCopyWith(
          _$_UserInfoStatePostedProfile value,
          $Res Function(_$_UserInfoStatePostedProfile) then) =
      __$$_UserInfoStatePostedProfileCopyWithImpl<$Res>;
  @useResult
  $Res call({Profile profile});

  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$$_UserInfoStatePostedProfileCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res, _$_UserInfoStatePostedProfile>
    implements _$$_UserInfoStatePostedProfileCopyWith<$Res> {
  __$$_UserInfoStatePostedProfileCopyWithImpl(
      _$_UserInfoStatePostedProfile _value,
      $Res Function(_$_UserInfoStatePostedProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$_UserInfoStatePostedProfile(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$_UserInfoStatePostedProfile
    with DiagnosticableTreeMixin
    implements _UserInfoStatePostedProfile {
  const _$_UserInfoStatePostedProfile({required this.profile});

  @override
  final Profile profile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserInfoState.postedProfile(profile: $profile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserInfoState.postedProfile'))
      ..add(DiagnosticsProperty('profile', profile));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInfoStatePostedProfile &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserInfoStatePostedProfileCopyWith<_$_UserInfoStatePostedProfile>
      get copyWith => __$$_UserInfoStatePostedProfileCopyWithImpl<
          _$_UserInfoStatePostedProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String error) error,
    required TResult Function() postingProfile,
    required TResult Function(Profile profile) postedProfile,
    required TResult Function(List<String>? errors, String? error) postError,
  }) {
    return postedProfile(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(String error)? error,
    TResult? Function()? postingProfile,
    TResult? Function(Profile profile)? postedProfile,
    TResult? Function(List<String>? errors, String? error)? postError,
  }) {
    return postedProfile?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String error)? error,
    TResult Function()? postingProfile,
    TResult Function(Profile profile)? postedProfile,
    TResult Function(List<String>? errors, String? error)? postError,
    required TResult orElse(),
  }) {
    if (postedProfile != null) {
      return postedProfile(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInfoInitial value) initial,
    required TResult Function(_UserInfoStateLoading value) isLoading,
    required TResult Function(_UserInfoStateError value) error,
    required TResult Function(_UserInfoStatePostingProfile value)
        postingProfile,
    required TResult Function(_UserInfoStatePostedProfile value) postedProfile,
    required TResult Function(_UserInfoStatePostingProfileError value)
        postError,
  }) {
    return postedProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInfoInitial value)? initial,
    TResult? Function(_UserInfoStateLoading value)? isLoading,
    TResult? Function(_UserInfoStateError value)? error,
    TResult? Function(_UserInfoStatePostingProfile value)? postingProfile,
    TResult? Function(_UserInfoStatePostedProfile value)? postedProfile,
    TResult? Function(_UserInfoStatePostingProfileError value)? postError,
  }) {
    return postedProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInfoInitial value)? initial,
    TResult Function(_UserInfoStateLoading value)? isLoading,
    TResult Function(_UserInfoStateError value)? error,
    TResult Function(_UserInfoStatePostingProfile value)? postingProfile,
    TResult Function(_UserInfoStatePostedProfile value)? postedProfile,
    TResult Function(_UserInfoStatePostingProfileError value)? postError,
    required TResult orElse(),
  }) {
    if (postedProfile != null) {
      return postedProfile(this);
    }
    return orElse();
  }
}

abstract class _UserInfoStatePostedProfile implements UserInfoState {
  const factory _UserInfoStatePostedProfile({required final Profile profile}) =
      _$_UserInfoStatePostedProfile;

  Profile get profile;
  @JsonKey(ignore: true)
  _$$_UserInfoStatePostedProfileCopyWith<_$_UserInfoStatePostedProfile>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserInfoStatePostingProfileErrorCopyWith<$Res> {
  factory _$$_UserInfoStatePostingProfileErrorCopyWith(
          _$_UserInfoStatePostingProfileError value,
          $Res Function(_$_UserInfoStatePostingProfileError) then) =
      __$$_UserInfoStatePostingProfileErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String>? errors, String? error});
}

/// @nodoc
class __$$_UserInfoStatePostingProfileErrorCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res,
        _$_UserInfoStatePostingProfileError>
    implements _$$_UserInfoStatePostingProfileErrorCopyWith<$Res> {
  __$$_UserInfoStatePostingProfileErrorCopyWithImpl(
      _$_UserInfoStatePostingProfileError _value,
      $Res Function(_$_UserInfoStatePostingProfileError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_UserInfoStatePostingProfileError(
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UserInfoStatePostingProfileError
    with DiagnosticableTreeMixin
    implements _UserInfoStatePostingProfileError {
  const _$_UserInfoStatePostingProfileError(
      {final List<String>? errors, this.error})
      : _errors = errors;

  final List<String>? _errors;
  @override
  List<String>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserInfoState.postError(errors: $errors, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserInfoState.postError'))
      ..add(DiagnosticsProperty('errors', errors))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInfoStatePostingProfileError &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_errors), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserInfoStatePostingProfileErrorCopyWith<
          _$_UserInfoStatePostingProfileError>
      get copyWith => __$$_UserInfoStatePostingProfileErrorCopyWithImpl<
          _$_UserInfoStatePostingProfileError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String error) error,
    required TResult Function() postingProfile,
    required TResult Function(Profile profile) postedProfile,
    required TResult Function(List<String>? errors, String? error) postError,
  }) {
    return postError(errors, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(String error)? error,
    TResult? Function()? postingProfile,
    TResult? Function(Profile profile)? postedProfile,
    TResult? Function(List<String>? errors, String? error)? postError,
  }) {
    return postError?.call(errors, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String error)? error,
    TResult Function()? postingProfile,
    TResult Function(Profile profile)? postedProfile,
    TResult Function(List<String>? errors, String? error)? postError,
    required TResult orElse(),
  }) {
    if (postError != null) {
      return postError(errors, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInfoInitial value) initial,
    required TResult Function(_UserInfoStateLoading value) isLoading,
    required TResult Function(_UserInfoStateError value) error,
    required TResult Function(_UserInfoStatePostingProfile value)
        postingProfile,
    required TResult Function(_UserInfoStatePostedProfile value) postedProfile,
    required TResult Function(_UserInfoStatePostingProfileError value)
        postError,
  }) {
    return postError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInfoInitial value)? initial,
    TResult? Function(_UserInfoStateLoading value)? isLoading,
    TResult? Function(_UserInfoStateError value)? error,
    TResult? Function(_UserInfoStatePostingProfile value)? postingProfile,
    TResult? Function(_UserInfoStatePostedProfile value)? postedProfile,
    TResult? Function(_UserInfoStatePostingProfileError value)? postError,
  }) {
    return postError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInfoInitial value)? initial,
    TResult Function(_UserInfoStateLoading value)? isLoading,
    TResult Function(_UserInfoStateError value)? error,
    TResult Function(_UserInfoStatePostingProfile value)? postingProfile,
    TResult Function(_UserInfoStatePostedProfile value)? postedProfile,
    TResult Function(_UserInfoStatePostingProfileError value)? postError,
    required TResult orElse(),
  }) {
    if (postError != null) {
      return postError(this);
    }
    return orElse();
  }
}

abstract class _UserInfoStatePostingProfileError implements UserInfoState {
  const factory _UserInfoStatePostingProfileError(
      {final List<String>? errors,
      final String? error}) = _$_UserInfoStatePostingProfileError;

  List<String>? get errors;
  String? get error;
  @JsonKey(ignore: true)
  _$$_UserInfoStatePostingProfileErrorCopyWith<
          _$_UserInfoStatePostingProfileError>
      get copyWith => throw _privateConstructorUsedError;
}
