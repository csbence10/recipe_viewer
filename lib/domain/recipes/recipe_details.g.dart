// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeDetails _$RecipeDetailsFromJson(Map<String, dynamic> json) {
  return RecipeDetails(
    json['id'] as int,
    json['imageUrl'] as String,
    json['kcal'] as int,
    json['minutes'] as int,
    json['name'] as String,
    json['steps'] as String,
    (json['ingredients'] as List<dynamic>)
        .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$RecipeDetailsToJson(RecipeDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'kcal': instance.kcal,
      'minutes': instance.minutes,
      'name': instance.name,
      'steps': instance.steps,
      'ingredients': instance.ingredients,
    };
