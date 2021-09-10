import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe_viewer/data/common/dio_provider.dart';
import 'package:recipe_viewer/domain/recipes/recipe.dart';

final recipeListProvider = FutureProvider<List<Recipe>>((ref) async {
  final dio = ref.read(dioProvider);
  final response = await dio.get('/recipes.json');
  return (response.data as List).map((e) => Recipe.fromJson(e)).toList();
});
