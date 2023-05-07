import 'package:app/features/programs/domain/models/ingredient/ingredient.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'meal.freezed.dart';
part 'meal.g.dart';

@freezed
class Meal with _$Meal {
  const factory Meal({
    required String name,
    required int carbs,
    required int fats,
    required int protein,
    required int calories,
    required bool isDone,
    required List<Ingredient> ingredients,
  }) = _Meal;
  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);
}
