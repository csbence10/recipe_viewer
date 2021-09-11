// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ingredient _$IngredientFromJson(Map<String, dynamic> json) {
  return Ingredient(
    json['ing_measure'] as int?,
    json['ing_name'] as String,
    json['ing_unit'] as String?,
  );
}

Map<String, dynamic> _$IngredientToJson(Ingredient instance) =>
    <String, dynamic>{
      'ing_measure': instance.measure,
      'ing_name': instance.name,
      'ing_unit': instance.unit,
    };
