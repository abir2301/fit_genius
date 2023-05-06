// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Meal _$$_MealFromJson(Map<String, dynamic> json) => _$_Meal(
      name: json['name'] as String,
      carbs: json['carbs'] as int,
      fats: json['fats'] as int,
      protein: json['protein'] as int,
      calories: json['calories'] as int,
      isDone: json['isDone'] as bool,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MealToJson(_$_Meal instance) => <String, dynamic>{
      'name': instance.name,
      'carbs': instance.carbs,
      'fats': instance.fats,
      'protein': instance.protein,
      'calories': instance.calories,
      'isDone': instance.isDone,
      'ingredients': instance.ingredients,
    };
