// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Meal _$MealFromJson(Map<String, dynamic> json) {
  return _Meal.fromJson(json);
}

/// @nodoc
mixin _$Meal {
  String get name => throw _privateConstructorUsedError;
  int get carbs => throw _privateConstructorUsedError;
  int get fats => throw _privateConstructorUsedError;
  int get protein => throw _privateConstructorUsedError;
  int get calories => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  List<Ingredient> get ingredients => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealCopyWith<Meal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealCopyWith<$Res> {
  factory $MealCopyWith(Meal value, $Res Function(Meal) then) =
      _$MealCopyWithImpl<$Res, Meal>;
  @useResult
  $Res call(
      {String name,
      int carbs,
      int fats,
      int protein,
      int calories,
      bool isDone,
      List<Ingredient> ingredients});
}

/// @nodoc
class _$MealCopyWithImpl<$Res, $Val extends Meal>
    implements $MealCopyWith<$Res> {
  _$MealCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? carbs = null,
    Object? fats = null,
    Object? protein = null,
    Object? calories = null,
    Object? isDone = null,
    Object? ingredients = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      carbs: null == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as int,
      fats: null == fats
          ? _value.fats
          : fats // ignore: cast_nullable_to_non_nullable
              as int,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as int,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MealCopyWith<$Res> implements $MealCopyWith<$Res> {
  factory _$$_MealCopyWith(_$_Meal value, $Res Function(_$_Meal) then) =
      __$$_MealCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int carbs,
      int fats,
      int protein,
      int calories,
      bool isDone,
      List<Ingredient> ingredients});
}

/// @nodoc
class __$$_MealCopyWithImpl<$Res> extends _$MealCopyWithImpl<$Res, _$_Meal>
    implements _$$_MealCopyWith<$Res> {
  __$$_MealCopyWithImpl(_$_Meal _value, $Res Function(_$_Meal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? carbs = null,
    Object? fats = null,
    Object? protein = null,
    Object? calories = null,
    Object? isDone = null,
    Object? ingredients = null,
  }) {
    return _then(_$_Meal(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      carbs: null == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as int,
      fats: null == fats
          ? _value.fats
          : fats // ignore: cast_nullable_to_non_nullable
              as int,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as int,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meal implements _Meal {
  const _$_Meal(
      {required this.name,
      required this.carbs,
      required this.fats,
      required this.protein,
      required this.calories,
      required this.isDone,
      required final List<Ingredient> ingredients})
      : _ingredients = ingredients;

  factory _$_Meal.fromJson(Map<String, dynamic> json) => _$$_MealFromJson(json);

  @override
  final String name;
  @override
  final int carbs;
  @override
  final int fats;
  @override
  final int protein;
  @override
  final int calories;
  @override
  final bool isDone;
  final List<Ingredient> _ingredients;
  @override
  List<Ingredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'Meal(name: $name, carbs: $carbs, fats: $fats, protein: $protein, calories: $calories, isDone: $isDone, ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meal &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.carbs, carbs) || other.carbs == carbs) &&
            (identical(other.fats, fats) || other.fats == fats) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, carbs, fats, protein,
      calories, isDone, const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MealCopyWith<_$_Meal> get copyWith =>
      __$$_MealCopyWithImpl<_$_Meal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealToJson(
      this,
    );
  }
}

abstract class _Meal implements Meal {
  const factory _Meal(
      {required final String name,
      required final int carbs,
      required final int fats,
      required final int protein,
      required final int calories,
      required final bool isDone,
      required final List<Ingredient> ingredients}) = _$_Meal;

  factory _Meal.fromJson(Map<String, dynamic> json) = _$_Meal.fromJson;

  @override
  String get name;
  @override
  int get carbs;
  @override
  int get fats;
  @override
  int get protein;
  @override
  int get calories;
  @override
  bool get isDone;
  @override
  List<Ingredient> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$_MealCopyWith<_$_Meal> get copyWith => throw _privateConstructorUsedError;
}
