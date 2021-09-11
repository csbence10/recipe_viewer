import 'package:json_annotation/json_annotation.dart';

part 'ingredient.g.dart';

@JsonSerializable()
class Ingredient {
  @JsonKey(name: 'ing_measure')
  final int? measure;
  @JsonKey(name: 'ing_name')
  final String name;
  @JsonKey(name: 'ing_unit')
  final String? unit;

  Ingredient(this.measure, this.name, this.unit);

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);

  Map<String, dynamic> toJson() => _$IngredientToJson(this);
}
