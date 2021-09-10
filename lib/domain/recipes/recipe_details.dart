import 'package:json_annotation/json_annotation.dart';
import 'package:recipe_viewer/domain/recipes/ingredient.dart';

part 'recipe_details.g.dart';

@JsonSerializable()
class RecipeDetails {
  final int id;
  final String imageUrl;
  final int kcal;
  final int minutes;
  final String name;
  final String steps;
  final List<Ingredient> ingredients;

  RecipeDetails(this.id, this.imageUrl, this.kcal, this.minutes, this.name,
      this.steps, this.ingredients);

  factory RecipeDetails.fromJson(Map<String, dynamic> json) =>
      _$RecipeDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeDetailsToJson(this);
}
