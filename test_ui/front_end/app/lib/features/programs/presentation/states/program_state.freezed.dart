// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProgramState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() gettingProgram,
    required TResult Function() gettingPerformance,
    required TResult Function(Program program) loadedProgram,
    required TResult Function(UserPerformance userPErformance)
        loadedPerformance,
    required TResult Function(List<String>? errors, String? error) programError,
    required TResult Function(String error) error,
    required TResult Function(List<String>? errors, String? error)
        performanceError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? gettingProgram,
    TResult? Function()? gettingPerformance,
    TResult? Function(Program program)? loadedProgram,
    TResult? Function(UserPerformance userPErformance)? loadedPerformance,
    TResult? Function(List<String>? errors, String? error)? programError,
    TResult? Function(String error)? error,
    TResult? Function(List<String>? errors, String? error)? performanceError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? gettingProgram,
    TResult Function()? gettingPerformance,
    TResult Function(Program program)? loadedProgram,
    TResult Function(UserPerformance userPErformance)? loadedPerformance,
    TResult Function(List<String>? errors, String? error)? programError,
    TResult Function(String error)? error,
    TResult Function(List<String>? errors, String? error)? performanceError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgramInitial value) initial,
    required TResult Function(_ProgramStateLoading value) loading,
    required TResult Function(_ProgramStateGettingProgram value) gettingProgram,
    required TResult Function(_ProgramStateGettingPerformance value)
        gettingPerformance,
    required TResult Function(_ProgramStateLoadedProgram value) loadedProgram,
    required TResult Function(_ProgramStateloadedPerformance value)
        loadedPerformance,
    required TResult Function(_ProgramStateProgramError value) programError,
    required TResult Function(_ProgramStateError value) error,
    required TResult Function(_ProgramStatePerformanceError value)
        performanceError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProgramInitial value)? initial,
    TResult? Function(_ProgramStateLoading value)? loading,
    TResult? Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult? Function(_ProgramStateGettingPerformance value)?
        gettingPerformance,
    TResult? Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult? Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult? Function(_ProgramStateProgramError value)? programError,
    TResult? Function(_ProgramStateError value)? error,
    TResult? Function(_ProgramStatePerformanceError value)? performanceError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgramInitial value)? initial,
    TResult Function(_ProgramStateLoading value)? loading,
    TResult Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult Function(_ProgramStateGettingPerformance value)? gettingPerformance,
    TResult Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult Function(_ProgramStateProgramError value)? programError,
    TResult Function(_ProgramStateError value)? error,
    TResult Function(_ProgramStatePerformanceError value)? performanceError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramStateCopyWith<$Res> {
  factory $ProgramStateCopyWith(
          ProgramState value, $Res Function(ProgramState) then) =
      _$ProgramStateCopyWithImpl<$Res, ProgramState>;
}

/// @nodoc
class _$ProgramStateCopyWithImpl<$Res, $Val extends ProgramState>
    implements $ProgramStateCopyWith<$Res> {
  _$ProgramStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ProgramInitialCopyWith<$Res> {
  factory _$$_ProgramInitialCopyWith(
          _$_ProgramInitial value, $Res Function(_$_ProgramInitial) then) =
      __$$_ProgramInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProgramInitialCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$_ProgramInitial>
    implements _$$_ProgramInitialCopyWith<$Res> {
  __$$_ProgramInitialCopyWithImpl(
      _$_ProgramInitial _value, $Res Function(_$_ProgramInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProgramInitial
    with DiagnosticableTreeMixin
    implements _ProgramInitial {
  const _$_ProgramInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProgramState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProgramState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProgramInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() gettingProgram,
    required TResult Function() gettingPerformance,
    required TResult Function(Program program) loadedProgram,
    required TResult Function(UserPerformance userPErformance)
        loadedPerformance,
    required TResult Function(List<String>? errors, String? error) programError,
    required TResult Function(String error) error,
    required TResult Function(List<String>? errors, String? error)
        performanceError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? gettingProgram,
    TResult? Function()? gettingPerformance,
    TResult? Function(Program program)? loadedProgram,
    TResult? Function(UserPerformance userPErformance)? loadedPerformance,
    TResult? Function(List<String>? errors, String? error)? programError,
    TResult? Function(String error)? error,
    TResult? Function(List<String>? errors, String? error)? performanceError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? gettingProgram,
    TResult Function()? gettingPerformance,
    TResult Function(Program program)? loadedProgram,
    TResult Function(UserPerformance userPErformance)? loadedPerformance,
    TResult Function(List<String>? errors, String? error)? programError,
    TResult Function(String error)? error,
    TResult Function(List<String>? errors, String? error)? performanceError,
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
    required TResult Function(_ProgramInitial value) initial,
    required TResult Function(_ProgramStateLoading value) loading,
    required TResult Function(_ProgramStateGettingProgram value) gettingProgram,
    required TResult Function(_ProgramStateGettingPerformance value)
        gettingPerformance,
    required TResult Function(_ProgramStateLoadedProgram value) loadedProgram,
    required TResult Function(_ProgramStateloadedPerformance value)
        loadedPerformance,
    required TResult Function(_ProgramStateProgramError value) programError,
    required TResult Function(_ProgramStateError value) error,
    required TResult Function(_ProgramStatePerformanceError value)
        performanceError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProgramInitial value)? initial,
    TResult? Function(_ProgramStateLoading value)? loading,
    TResult? Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult? Function(_ProgramStateGettingPerformance value)?
        gettingPerformance,
    TResult? Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult? Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult? Function(_ProgramStateProgramError value)? programError,
    TResult? Function(_ProgramStateError value)? error,
    TResult? Function(_ProgramStatePerformanceError value)? performanceError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgramInitial value)? initial,
    TResult Function(_ProgramStateLoading value)? loading,
    TResult Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult Function(_ProgramStateGettingPerformance value)? gettingPerformance,
    TResult Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult Function(_ProgramStateProgramError value)? programError,
    TResult Function(_ProgramStateError value)? error,
    TResult Function(_ProgramStatePerformanceError value)? performanceError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ProgramInitial implements ProgramState {
  const factory _ProgramInitial() = _$_ProgramInitial;
}

/// @nodoc
abstract class _$$_ProgramStateLoadingCopyWith<$Res> {
  factory _$$_ProgramStateLoadingCopyWith(_$_ProgramStateLoading value,
          $Res Function(_$_ProgramStateLoading) then) =
      __$$_ProgramStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProgramStateLoadingCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$_ProgramStateLoading>
    implements _$$_ProgramStateLoadingCopyWith<$Res> {
  __$$_ProgramStateLoadingCopyWithImpl(_$_ProgramStateLoading _value,
      $Res Function(_$_ProgramStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProgramStateLoading
    with DiagnosticableTreeMixin
    implements _ProgramStateLoading {
  const _$_ProgramStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProgramState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProgramState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProgramStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() gettingProgram,
    required TResult Function() gettingPerformance,
    required TResult Function(Program program) loadedProgram,
    required TResult Function(UserPerformance userPErformance)
        loadedPerformance,
    required TResult Function(List<String>? errors, String? error) programError,
    required TResult Function(String error) error,
    required TResult Function(List<String>? errors, String? error)
        performanceError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? gettingProgram,
    TResult? Function()? gettingPerformance,
    TResult? Function(Program program)? loadedProgram,
    TResult? Function(UserPerformance userPErformance)? loadedPerformance,
    TResult? Function(List<String>? errors, String? error)? programError,
    TResult? Function(String error)? error,
    TResult? Function(List<String>? errors, String? error)? performanceError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? gettingProgram,
    TResult Function()? gettingPerformance,
    TResult Function(Program program)? loadedProgram,
    TResult Function(UserPerformance userPErformance)? loadedPerformance,
    TResult Function(List<String>? errors, String? error)? programError,
    TResult Function(String error)? error,
    TResult Function(List<String>? errors, String? error)? performanceError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgramInitial value) initial,
    required TResult Function(_ProgramStateLoading value) loading,
    required TResult Function(_ProgramStateGettingProgram value) gettingProgram,
    required TResult Function(_ProgramStateGettingPerformance value)
        gettingPerformance,
    required TResult Function(_ProgramStateLoadedProgram value) loadedProgram,
    required TResult Function(_ProgramStateloadedPerformance value)
        loadedPerformance,
    required TResult Function(_ProgramStateProgramError value) programError,
    required TResult Function(_ProgramStateError value) error,
    required TResult Function(_ProgramStatePerformanceError value)
        performanceError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProgramInitial value)? initial,
    TResult? Function(_ProgramStateLoading value)? loading,
    TResult? Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult? Function(_ProgramStateGettingPerformance value)?
        gettingPerformance,
    TResult? Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult? Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult? Function(_ProgramStateProgramError value)? programError,
    TResult? Function(_ProgramStateError value)? error,
    TResult? Function(_ProgramStatePerformanceError value)? performanceError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgramInitial value)? initial,
    TResult Function(_ProgramStateLoading value)? loading,
    TResult Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult Function(_ProgramStateGettingPerformance value)? gettingPerformance,
    TResult Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult Function(_ProgramStateProgramError value)? programError,
    TResult Function(_ProgramStateError value)? error,
    TResult Function(_ProgramStatePerformanceError value)? performanceError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ProgramStateLoading implements ProgramState {
  const factory _ProgramStateLoading() = _$_ProgramStateLoading;
}

/// @nodoc
abstract class _$$_ProgramStateGettingProgramCopyWith<$Res> {
  factory _$$_ProgramStateGettingProgramCopyWith(
          _$_ProgramStateGettingProgram value,
          $Res Function(_$_ProgramStateGettingProgram) then) =
      __$$_ProgramStateGettingProgramCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProgramStateGettingProgramCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$_ProgramStateGettingProgram>
    implements _$$_ProgramStateGettingProgramCopyWith<$Res> {
  __$$_ProgramStateGettingProgramCopyWithImpl(
      _$_ProgramStateGettingProgram _value,
      $Res Function(_$_ProgramStateGettingProgram) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProgramStateGettingProgram
    with DiagnosticableTreeMixin
    implements _ProgramStateGettingProgram {
  const _$_ProgramStateGettingProgram();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProgramState.gettingProgram()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProgramState.gettingProgram'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProgramStateGettingProgram);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() gettingProgram,
    required TResult Function() gettingPerformance,
    required TResult Function(Program program) loadedProgram,
    required TResult Function(UserPerformance userPErformance)
        loadedPerformance,
    required TResult Function(List<String>? errors, String? error) programError,
    required TResult Function(String error) error,
    required TResult Function(List<String>? errors, String? error)
        performanceError,
  }) {
    return gettingProgram();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? gettingProgram,
    TResult? Function()? gettingPerformance,
    TResult? Function(Program program)? loadedProgram,
    TResult? Function(UserPerformance userPErformance)? loadedPerformance,
    TResult? Function(List<String>? errors, String? error)? programError,
    TResult? Function(String error)? error,
    TResult? Function(List<String>? errors, String? error)? performanceError,
  }) {
    return gettingProgram?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? gettingProgram,
    TResult Function()? gettingPerformance,
    TResult Function(Program program)? loadedProgram,
    TResult Function(UserPerformance userPErformance)? loadedPerformance,
    TResult Function(List<String>? errors, String? error)? programError,
    TResult Function(String error)? error,
    TResult Function(List<String>? errors, String? error)? performanceError,
    required TResult orElse(),
  }) {
    if (gettingProgram != null) {
      return gettingProgram();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgramInitial value) initial,
    required TResult Function(_ProgramStateLoading value) loading,
    required TResult Function(_ProgramStateGettingProgram value) gettingProgram,
    required TResult Function(_ProgramStateGettingPerformance value)
        gettingPerformance,
    required TResult Function(_ProgramStateLoadedProgram value) loadedProgram,
    required TResult Function(_ProgramStateloadedPerformance value)
        loadedPerformance,
    required TResult Function(_ProgramStateProgramError value) programError,
    required TResult Function(_ProgramStateError value) error,
    required TResult Function(_ProgramStatePerformanceError value)
        performanceError,
  }) {
    return gettingProgram(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProgramInitial value)? initial,
    TResult? Function(_ProgramStateLoading value)? loading,
    TResult? Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult? Function(_ProgramStateGettingPerformance value)?
        gettingPerformance,
    TResult? Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult? Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult? Function(_ProgramStateProgramError value)? programError,
    TResult? Function(_ProgramStateError value)? error,
    TResult? Function(_ProgramStatePerformanceError value)? performanceError,
  }) {
    return gettingProgram?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgramInitial value)? initial,
    TResult Function(_ProgramStateLoading value)? loading,
    TResult Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult Function(_ProgramStateGettingPerformance value)? gettingPerformance,
    TResult Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult Function(_ProgramStateProgramError value)? programError,
    TResult Function(_ProgramStateError value)? error,
    TResult Function(_ProgramStatePerformanceError value)? performanceError,
    required TResult orElse(),
  }) {
    if (gettingProgram != null) {
      return gettingProgram(this);
    }
    return orElse();
  }
}

abstract class _ProgramStateGettingProgram implements ProgramState {
  const factory _ProgramStateGettingProgram() = _$_ProgramStateGettingProgram;
}

/// @nodoc
abstract class _$$_ProgramStateGettingPerformanceCopyWith<$Res> {
  factory _$$_ProgramStateGettingPerformanceCopyWith(
          _$_ProgramStateGettingPerformance value,
          $Res Function(_$_ProgramStateGettingPerformance) then) =
      __$$_ProgramStateGettingPerformanceCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProgramStateGettingPerformanceCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$_ProgramStateGettingPerformance>
    implements _$$_ProgramStateGettingPerformanceCopyWith<$Res> {
  __$$_ProgramStateGettingPerformanceCopyWithImpl(
      _$_ProgramStateGettingPerformance _value,
      $Res Function(_$_ProgramStateGettingPerformance) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProgramStateGettingPerformance
    with DiagnosticableTreeMixin
    implements _ProgramStateGettingPerformance {
  const _$_ProgramStateGettingPerformance();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProgramState.gettingPerformance()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ProgramState.gettingPerformance'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProgramStateGettingPerformance);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() gettingProgram,
    required TResult Function() gettingPerformance,
    required TResult Function(Program program) loadedProgram,
    required TResult Function(UserPerformance userPErformance)
        loadedPerformance,
    required TResult Function(List<String>? errors, String? error) programError,
    required TResult Function(String error) error,
    required TResult Function(List<String>? errors, String? error)
        performanceError,
  }) {
    return gettingPerformance();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? gettingProgram,
    TResult? Function()? gettingPerformance,
    TResult? Function(Program program)? loadedProgram,
    TResult? Function(UserPerformance userPErformance)? loadedPerformance,
    TResult? Function(List<String>? errors, String? error)? programError,
    TResult? Function(String error)? error,
    TResult? Function(List<String>? errors, String? error)? performanceError,
  }) {
    return gettingPerformance?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? gettingProgram,
    TResult Function()? gettingPerformance,
    TResult Function(Program program)? loadedProgram,
    TResult Function(UserPerformance userPErformance)? loadedPerformance,
    TResult Function(List<String>? errors, String? error)? programError,
    TResult Function(String error)? error,
    TResult Function(List<String>? errors, String? error)? performanceError,
    required TResult orElse(),
  }) {
    if (gettingPerformance != null) {
      return gettingPerformance();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgramInitial value) initial,
    required TResult Function(_ProgramStateLoading value) loading,
    required TResult Function(_ProgramStateGettingProgram value) gettingProgram,
    required TResult Function(_ProgramStateGettingPerformance value)
        gettingPerformance,
    required TResult Function(_ProgramStateLoadedProgram value) loadedProgram,
    required TResult Function(_ProgramStateloadedPerformance value)
        loadedPerformance,
    required TResult Function(_ProgramStateProgramError value) programError,
    required TResult Function(_ProgramStateError value) error,
    required TResult Function(_ProgramStatePerformanceError value)
        performanceError,
  }) {
    return gettingPerformance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProgramInitial value)? initial,
    TResult? Function(_ProgramStateLoading value)? loading,
    TResult? Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult? Function(_ProgramStateGettingPerformance value)?
        gettingPerformance,
    TResult? Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult? Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult? Function(_ProgramStateProgramError value)? programError,
    TResult? Function(_ProgramStateError value)? error,
    TResult? Function(_ProgramStatePerformanceError value)? performanceError,
  }) {
    return gettingPerformance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgramInitial value)? initial,
    TResult Function(_ProgramStateLoading value)? loading,
    TResult Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult Function(_ProgramStateGettingPerformance value)? gettingPerformance,
    TResult Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult Function(_ProgramStateProgramError value)? programError,
    TResult Function(_ProgramStateError value)? error,
    TResult Function(_ProgramStatePerformanceError value)? performanceError,
    required TResult orElse(),
  }) {
    if (gettingPerformance != null) {
      return gettingPerformance(this);
    }
    return orElse();
  }
}

abstract class _ProgramStateGettingPerformance implements ProgramState {
  const factory _ProgramStateGettingPerformance() =
      _$_ProgramStateGettingPerformance;
}

/// @nodoc
abstract class _$$_ProgramStateLoadedProgramCopyWith<$Res> {
  factory _$$_ProgramStateLoadedProgramCopyWith(
          _$_ProgramStateLoadedProgram value,
          $Res Function(_$_ProgramStateLoadedProgram) then) =
      __$$_ProgramStateLoadedProgramCopyWithImpl<$Res>;
  @useResult
  $Res call({Program program});

  $ProgramCopyWith<$Res> get program;
}

/// @nodoc
class __$$_ProgramStateLoadedProgramCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$_ProgramStateLoadedProgram>
    implements _$$_ProgramStateLoadedProgramCopyWith<$Res> {
  __$$_ProgramStateLoadedProgramCopyWithImpl(
      _$_ProgramStateLoadedProgram _value,
      $Res Function(_$_ProgramStateLoadedProgram) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? program = null,
  }) {
    return _then(_$_ProgramStateLoadedProgram(
      program: null == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as Program,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramCopyWith<$Res> get program {
    return $ProgramCopyWith<$Res>(_value.program, (value) {
      return _then(_value.copyWith(program: value));
    });
  }
}

/// @nodoc

class _$_ProgramStateLoadedProgram
    with DiagnosticableTreeMixin
    implements _ProgramStateLoadedProgram {
  const _$_ProgramStateLoadedProgram({required this.program});

  @override
  final Program program;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProgramState.loadedProgram(program: $program)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProgramState.loadedProgram'))
      ..add(DiagnosticsProperty('program', program));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProgramStateLoadedProgram &&
            (identical(other.program, program) || other.program == program));
  }

  @override
  int get hashCode => Object.hash(runtimeType, program);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProgramStateLoadedProgramCopyWith<_$_ProgramStateLoadedProgram>
      get copyWith => __$$_ProgramStateLoadedProgramCopyWithImpl<
          _$_ProgramStateLoadedProgram>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() gettingProgram,
    required TResult Function() gettingPerformance,
    required TResult Function(Program program) loadedProgram,
    required TResult Function(UserPerformance userPErformance)
        loadedPerformance,
    required TResult Function(List<String>? errors, String? error) programError,
    required TResult Function(String error) error,
    required TResult Function(List<String>? errors, String? error)
        performanceError,
  }) {
    return loadedProgram(program);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? gettingProgram,
    TResult? Function()? gettingPerformance,
    TResult? Function(Program program)? loadedProgram,
    TResult? Function(UserPerformance userPErformance)? loadedPerformance,
    TResult? Function(List<String>? errors, String? error)? programError,
    TResult? Function(String error)? error,
    TResult? Function(List<String>? errors, String? error)? performanceError,
  }) {
    return loadedProgram?.call(program);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? gettingProgram,
    TResult Function()? gettingPerformance,
    TResult Function(Program program)? loadedProgram,
    TResult Function(UserPerformance userPErformance)? loadedPerformance,
    TResult Function(List<String>? errors, String? error)? programError,
    TResult Function(String error)? error,
    TResult Function(List<String>? errors, String? error)? performanceError,
    required TResult orElse(),
  }) {
    if (loadedProgram != null) {
      return loadedProgram(program);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgramInitial value) initial,
    required TResult Function(_ProgramStateLoading value) loading,
    required TResult Function(_ProgramStateGettingProgram value) gettingProgram,
    required TResult Function(_ProgramStateGettingPerformance value)
        gettingPerformance,
    required TResult Function(_ProgramStateLoadedProgram value) loadedProgram,
    required TResult Function(_ProgramStateloadedPerformance value)
        loadedPerformance,
    required TResult Function(_ProgramStateProgramError value) programError,
    required TResult Function(_ProgramStateError value) error,
    required TResult Function(_ProgramStatePerformanceError value)
        performanceError,
  }) {
    return loadedProgram(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProgramInitial value)? initial,
    TResult? Function(_ProgramStateLoading value)? loading,
    TResult? Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult? Function(_ProgramStateGettingPerformance value)?
        gettingPerformance,
    TResult? Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult? Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult? Function(_ProgramStateProgramError value)? programError,
    TResult? Function(_ProgramStateError value)? error,
    TResult? Function(_ProgramStatePerformanceError value)? performanceError,
  }) {
    return loadedProgram?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgramInitial value)? initial,
    TResult Function(_ProgramStateLoading value)? loading,
    TResult Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult Function(_ProgramStateGettingPerformance value)? gettingPerformance,
    TResult Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult Function(_ProgramStateProgramError value)? programError,
    TResult Function(_ProgramStateError value)? error,
    TResult Function(_ProgramStatePerformanceError value)? performanceError,
    required TResult orElse(),
  }) {
    if (loadedProgram != null) {
      return loadedProgram(this);
    }
    return orElse();
  }
}

abstract class _ProgramStateLoadedProgram implements ProgramState {
  const factory _ProgramStateLoadedProgram({required final Program program}) =
      _$_ProgramStateLoadedProgram;

  Program get program;
  @JsonKey(ignore: true)
  _$$_ProgramStateLoadedProgramCopyWith<_$_ProgramStateLoadedProgram>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProgramStateloadedPerformanceCopyWith<$Res> {
  factory _$$_ProgramStateloadedPerformanceCopyWith(
          _$_ProgramStateloadedPerformance value,
          $Res Function(_$_ProgramStateloadedPerformance) then) =
      __$$_ProgramStateloadedPerformanceCopyWithImpl<$Res>;
  @useResult
  $Res call({UserPerformance userPErformance});

  $UserPerformanceCopyWith<$Res> get userPErformance;
}

/// @nodoc
class __$$_ProgramStateloadedPerformanceCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$_ProgramStateloadedPerformance>
    implements _$$_ProgramStateloadedPerformanceCopyWith<$Res> {
  __$$_ProgramStateloadedPerformanceCopyWithImpl(
      _$_ProgramStateloadedPerformance _value,
      $Res Function(_$_ProgramStateloadedPerformance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userPErformance = null,
  }) {
    return _then(_$_ProgramStateloadedPerformance(
      userPErformance: null == userPErformance
          ? _value.userPErformance
          : userPErformance // ignore: cast_nullable_to_non_nullable
              as UserPerformance,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserPerformanceCopyWith<$Res> get userPErformance {
    return $UserPerformanceCopyWith<$Res>(_value.userPErformance, (value) {
      return _then(_value.copyWith(userPErformance: value));
    });
  }
}

/// @nodoc

class _$_ProgramStateloadedPerformance
    with DiagnosticableTreeMixin
    implements _ProgramStateloadedPerformance {
  const _$_ProgramStateloadedPerformance({required this.userPErformance});

  @override
  final UserPerformance userPErformance;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProgramState.loadedPerformance(userPErformance: $userPErformance)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProgramState.loadedPerformance'))
      ..add(DiagnosticsProperty('userPErformance', userPErformance));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProgramStateloadedPerformance &&
            (identical(other.userPErformance, userPErformance) ||
                other.userPErformance == userPErformance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userPErformance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProgramStateloadedPerformanceCopyWith<_$_ProgramStateloadedPerformance>
      get copyWith => __$$_ProgramStateloadedPerformanceCopyWithImpl<
          _$_ProgramStateloadedPerformance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() gettingProgram,
    required TResult Function() gettingPerformance,
    required TResult Function(Program program) loadedProgram,
    required TResult Function(UserPerformance userPErformance)
        loadedPerformance,
    required TResult Function(List<String>? errors, String? error) programError,
    required TResult Function(String error) error,
    required TResult Function(List<String>? errors, String? error)
        performanceError,
  }) {
    return loadedPerformance(userPErformance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? gettingProgram,
    TResult? Function()? gettingPerformance,
    TResult? Function(Program program)? loadedProgram,
    TResult? Function(UserPerformance userPErformance)? loadedPerformance,
    TResult? Function(List<String>? errors, String? error)? programError,
    TResult? Function(String error)? error,
    TResult? Function(List<String>? errors, String? error)? performanceError,
  }) {
    return loadedPerformance?.call(userPErformance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? gettingProgram,
    TResult Function()? gettingPerformance,
    TResult Function(Program program)? loadedProgram,
    TResult Function(UserPerformance userPErformance)? loadedPerformance,
    TResult Function(List<String>? errors, String? error)? programError,
    TResult Function(String error)? error,
    TResult Function(List<String>? errors, String? error)? performanceError,
    required TResult orElse(),
  }) {
    if (loadedPerformance != null) {
      return loadedPerformance(userPErformance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgramInitial value) initial,
    required TResult Function(_ProgramStateLoading value) loading,
    required TResult Function(_ProgramStateGettingProgram value) gettingProgram,
    required TResult Function(_ProgramStateGettingPerformance value)
        gettingPerformance,
    required TResult Function(_ProgramStateLoadedProgram value) loadedProgram,
    required TResult Function(_ProgramStateloadedPerformance value)
        loadedPerformance,
    required TResult Function(_ProgramStateProgramError value) programError,
    required TResult Function(_ProgramStateError value) error,
    required TResult Function(_ProgramStatePerformanceError value)
        performanceError,
  }) {
    return loadedPerformance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProgramInitial value)? initial,
    TResult? Function(_ProgramStateLoading value)? loading,
    TResult? Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult? Function(_ProgramStateGettingPerformance value)?
        gettingPerformance,
    TResult? Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult? Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult? Function(_ProgramStateProgramError value)? programError,
    TResult? Function(_ProgramStateError value)? error,
    TResult? Function(_ProgramStatePerformanceError value)? performanceError,
  }) {
    return loadedPerformance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgramInitial value)? initial,
    TResult Function(_ProgramStateLoading value)? loading,
    TResult Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult Function(_ProgramStateGettingPerformance value)? gettingPerformance,
    TResult Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult Function(_ProgramStateProgramError value)? programError,
    TResult Function(_ProgramStateError value)? error,
    TResult Function(_ProgramStatePerformanceError value)? performanceError,
    required TResult orElse(),
  }) {
    if (loadedPerformance != null) {
      return loadedPerformance(this);
    }
    return orElse();
  }
}

abstract class _ProgramStateloadedPerformance implements ProgramState {
  const factory _ProgramStateloadedPerformance(
          {required final UserPerformance userPErformance}) =
      _$_ProgramStateloadedPerformance;

  UserPerformance get userPErformance;
  @JsonKey(ignore: true)
  _$$_ProgramStateloadedPerformanceCopyWith<_$_ProgramStateloadedPerformance>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProgramStateProgramErrorCopyWith<$Res> {
  factory _$$_ProgramStateProgramErrorCopyWith(
          _$_ProgramStateProgramError value,
          $Res Function(_$_ProgramStateProgramError) then) =
      __$$_ProgramStateProgramErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String>? errors, String? error});
}

/// @nodoc
class __$$_ProgramStateProgramErrorCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$_ProgramStateProgramError>
    implements _$$_ProgramStateProgramErrorCopyWith<$Res> {
  __$$_ProgramStateProgramErrorCopyWithImpl(_$_ProgramStateProgramError _value,
      $Res Function(_$_ProgramStateProgramError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_ProgramStateProgramError(
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

class _$_ProgramStateProgramError
    with DiagnosticableTreeMixin
    implements _ProgramStateProgramError {
  const _$_ProgramStateProgramError({final List<String>? errors, this.error})
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
    return 'ProgramState.programError(errors: $errors, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProgramState.programError'))
      ..add(DiagnosticsProperty('errors', errors))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProgramStateProgramError &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_errors), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProgramStateProgramErrorCopyWith<_$_ProgramStateProgramError>
      get copyWith => __$$_ProgramStateProgramErrorCopyWithImpl<
          _$_ProgramStateProgramError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() gettingProgram,
    required TResult Function() gettingPerformance,
    required TResult Function(Program program) loadedProgram,
    required TResult Function(UserPerformance userPErformance)
        loadedPerformance,
    required TResult Function(List<String>? errors, String? error) programError,
    required TResult Function(String error) error,
    required TResult Function(List<String>? errors, String? error)
        performanceError,
  }) {
    return programError(errors, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? gettingProgram,
    TResult? Function()? gettingPerformance,
    TResult? Function(Program program)? loadedProgram,
    TResult? Function(UserPerformance userPErformance)? loadedPerformance,
    TResult? Function(List<String>? errors, String? error)? programError,
    TResult? Function(String error)? error,
    TResult? Function(List<String>? errors, String? error)? performanceError,
  }) {
    return programError?.call(errors, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? gettingProgram,
    TResult Function()? gettingPerformance,
    TResult Function(Program program)? loadedProgram,
    TResult Function(UserPerformance userPErformance)? loadedPerformance,
    TResult Function(List<String>? errors, String? error)? programError,
    TResult Function(String error)? error,
    TResult Function(List<String>? errors, String? error)? performanceError,
    required TResult orElse(),
  }) {
    if (programError != null) {
      return programError(errors, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgramInitial value) initial,
    required TResult Function(_ProgramStateLoading value) loading,
    required TResult Function(_ProgramStateGettingProgram value) gettingProgram,
    required TResult Function(_ProgramStateGettingPerformance value)
        gettingPerformance,
    required TResult Function(_ProgramStateLoadedProgram value) loadedProgram,
    required TResult Function(_ProgramStateloadedPerformance value)
        loadedPerformance,
    required TResult Function(_ProgramStateProgramError value) programError,
    required TResult Function(_ProgramStateError value) error,
    required TResult Function(_ProgramStatePerformanceError value)
        performanceError,
  }) {
    return programError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProgramInitial value)? initial,
    TResult? Function(_ProgramStateLoading value)? loading,
    TResult? Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult? Function(_ProgramStateGettingPerformance value)?
        gettingPerformance,
    TResult? Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult? Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult? Function(_ProgramStateProgramError value)? programError,
    TResult? Function(_ProgramStateError value)? error,
    TResult? Function(_ProgramStatePerformanceError value)? performanceError,
  }) {
    return programError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgramInitial value)? initial,
    TResult Function(_ProgramStateLoading value)? loading,
    TResult Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult Function(_ProgramStateGettingPerformance value)? gettingPerformance,
    TResult Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult Function(_ProgramStateProgramError value)? programError,
    TResult Function(_ProgramStateError value)? error,
    TResult Function(_ProgramStatePerformanceError value)? performanceError,
    required TResult orElse(),
  }) {
    if (programError != null) {
      return programError(this);
    }
    return orElse();
  }
}

abstract class _ProgramStateProgramError implements ProgramState {
  const factory _ProgramStateProgramError(
      {final List<String>? errors,
      final String? error}) = _$_ProgramStateProgramError;

  List<String>? get errors;
  String? get error;
  @JsonKey(ignore: true)
  _$$_ProgramStateProgramErrorCopyWith<_$_ProgramStateProgramError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProgramStateErrorCopyWith<$Res> {
  factory _$$_ProgramStateErrorCopyWith(_$_ProgramStateError value,
          $Res Function(_$_ProgramStateError) then) =
      __$$_ProgramStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ProgramStateErrorCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$_ProgramStateError>
    implements _$$_ProgramStateErrorCopyWith<$Res> {
  __$$_ProgramStateErrorCopyWithImpl(
      _$_ProgramStateError _value, $Res Function(_$_ProgramStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ProgramStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProgramStateError
    with DiagnosticableTreeMixin
    implements _ProgramStateError {
  const _$_ProgramStateError({required this.error});

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProgramState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProgramState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProgramStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProgramStateErrorCopyWith<_$_ProgramStateError> get copyWith =>
      __$$_ProgramStateErrorCopyWithImpl<_$_ProgramStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() gettingProgram,
    required TResult Function() gettingPerformance,
    required TResult Function(Program program) loadedProgram,
    required TResult Function(UserPerformance userPErformance)
        loadedPerformance,
    required TResult Function(List<String>? errors, String? error) programError,
    required TResult Function(String error) error,
    required TResult Function(List<String>? errors, String? error)
        performanceError,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? gettingProgram,
    TResult? Function()? gettingPerformance,
    TResult? Function(Program program)? loadedProgram,
    TResult? Function(UserPerformance userPErformance)? loadedPerformance,
    TResult? Function(List<String>? errors, String? error)? programError,
    TResult? Function(String error)? error,
    TResult? Function(List<String>? errors, String? error)? performanceError,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? gettingProgram,
    TResult Function()? gettingPerformance,
    TResult Function(Program program)? loadedProgram,
    TResult Function(UserPerformance userPErformance)? loadedPerformance,
    TResult Function(List<String>? errors, String? error)? programError,
    TResult Function(String error)? error,
    TResult Function(List<String>? errors, String? error)? performanceError,
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
    required TResult Function(_ProgramInitial value) initial,
    required TResult Function(_ProgramStateLoading value) loading,
    required TResult Function(_ProgramStateGettingProgram value) gettingProgram,
    required TResult Function(_ProgramStateGettingPerformance value)
        gettingPerformance,
    required TResult Function(_ProgramStateLoadedProgram value) loadedProgram,
    required TResult Function(_ProgramStateloadedPerformance value)
        loadedPerformance,
    required TResult Function(_ProgramStateProgramError value) programError,
    required TResult Function(_ProgramStateError value) error,
    required TResult Function(_ProgramStatePerformanceError value)
        performanceError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProgramInitial value)? initial,
    TResult? Function(_ProgramStateLoading value)? loading,
    TResult? Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult? Function(_ProgramStateGettingPerformance value)?
        gettingPerformance,
    TResult? Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult? Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult? Function(_ProgramStateProgramError value)? programError,
    TResult? Function(_ProgramStateError value)? error,
    TResult? Function(_ProgramStatePerformanceError value)? performanceError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgramInitial value)? initial,
    TResult Function(_ProgramStateLoading value)? loading,
    TResult Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult Function(_ProgramStateGettingPerformance value)? gettingPerformance,
    TResult Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult Function(_ProgramStateProgramError value)? programError,
    TResult Function(_ProgramStateError value)? error,
    TResult Function(_ProgramStatePerformanceError value)? performanceError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ProgramStateError implements ProgramState {
  const factory _ProgramStateError({required final String error}) =
      _$_ProgramStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_ProgramStateErrorCopyWith<_$_ProgramStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProgramStatePerformanceErrorCopyWith<$Res> {
  factory _$$_ProgramStatePerformanceErrorCopyWith(
          _$_ProgramStatePerformanceError value,
          $Res Function(_$_ProgramStatePerformanceError) then) =
      __$$_ProgramStatePerformanceErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String>? errors, String? error});
}

/// @nodoc
class __$$_ProgramStatePerformanceErrorCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$_ProgramStatePerformanceError>
    implements _$$_ProgramStatePerformanceErrorCopyWith<$Res> {
  __$$_ProgramStatePerformanceErrorCopyWithImpl(
      _$_ProgramStatePerformanceError _value,
      $Res Function(_$_ProgramStatePerformanceError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_ProgramStatePerformanceError(
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

class _$_ProgramStatePerformanceError
    with DiagnosticableTreeMixin
    implements _ProgramStatePerformanceError {
  const _$_ProgramStatePerformanceError(
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
    return 'ProgramState.performanceError(errors: $errors, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProgramState.performanceError'))
      ..add(DiagnosticsProperty('errors', errors))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProgramStatePerformanceError &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_errors), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProgramStatePerformanceErrorCopyWith<_$_ProgramStatePerformanceError>
      get copyWith => __$$_ProgramStatePerformanceErrorCopyWithImpl<
          _$_ProgramStatePerformanceError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() gettingProgram,
    required TResult Function() gettingPerformance,
    required TResult Function(Program program) loadedProgram,
    required TResult Function(UserPerformance userPErformance)
        loadedPerformance,
    required TResult Function(List<String>? errors, String? error) programError,
    required TResult Function(String error) error,
    required TResult Function(List<String>? errors, String? error)
        performanceError,
  }) {
    return performanceError(errors, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? gettingProgram,
    TResult? Function()? gettingPerformance,
    TResult? Function(Program program)? loadedProgram,
    TResult? Function(UserPerformance userPErformance)? loadedPerformance,
    TResult? Function(List<String>? errors, String? error)? programError,
    TResult? Function(String error)? error,
    TResult? Function(List<String>? errors, String? error)? performanceError,
  }) {
    return performanceError?.call(errors, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? gettingProgram,
    TResult Function()? gettingPerformance,
    TResult Function(Program program)? loadedProgram,
    TResult Function(UserPerformance userPErformance)? loadedPerformance,
    TResult Function(List<String>? errors, String? error)? programError,
    TResult Function(String error)? error,
    TResult Function(List<String>? errors, String? error)? performanceError,
    required TResult orElse(),
  }) {
    if (performanceError != null) {
      return performanceError(errors, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgramInitial value) initial,
    required TResult Function(_ProgramStateLoading value) loading,
    required TResult Function(_ProgramStateGettingProgram value) gettingProgram,
    required TResult Function(_ProgramStateGettingPerformance value)
        gettingPerformance,
    required TResult Function(_ProgramStateLoadedProgram value) loadedProgram,
    required TResult Function(_ProgramStateloadedPerformance value)
        loadedPerformance,
    required TResult Function(_ProgramStateProgramError value) programError,
    required TResult Function(_ProgramStateError value) error,
    required TResult Function(_ProgramStatePerformanceError value)
        performanceError,
  }) {
    return performanceError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProgramInitial value)? initial,
    TResult? Function(_ProgramStateLoading value)? loading,
    TResult? Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult? Function(_ProgramStateGettingPerformance value)?
        gettingPerformance,
    TResult? Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult? Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult? Function(_ProgramStateProgramError value)? programError,
    TResult? Function(_ProgramStateError value)? error,
    TResult? Function(_ProgramStatePerformanceError value)? performanceError,
  }) {
    return performanceError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgramInitial value)? initial,
    TResult Function(_ProgramStateLoading value)? loading,
    TResult Function(_ProgramStateGettingProgram value)? gettingProgram,
    TResult Function(_ProgramStateGettingPerformance value)? gettingPerformance,
    TResult Function(_ProgramStateLoadedProgram value)? loadedProgram,
    TResult Function(_ProgramStateloadedPerformance value)? loadedPerformance,
    TResult Function(_ProgramStateProgramError value)? programError,
    TResult Function(_ProgramStateError value)? error,
    TResult Function(_ProgramStatePerformanceError value)? performanceError,
    required TResult orElse(),
  }) {
    if (performanceError != null) {
      return performanceError(this);
    }
    return orElse();
  }
}

abstract class _ProgramStatePerformanceError implements ProgramState {
  const factory _ProgramStatePerformanceError(
      {final List<String>? errors,
      final String? error}) = _$_ProgramStatePerformanceError;

  List<String>? get errors;
  String? get error;
  @JsonKey(ignore: true)
  _$$_ProgramStatePerformanceErrorCopyWith<_$_ProgramStatePerformanceError>
      get copyWith => throw _privateConstructorUsedError;
}
