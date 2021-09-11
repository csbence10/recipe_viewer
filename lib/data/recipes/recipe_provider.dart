import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe_viewer/data/common/dio_provider.dart';
import 'package:recipe_viewer/domain/recipes/recipe.dart';
import 'package:recipe_viewer/domain/recipes/recipe_details.dart';

final recipeListProvider = FutureProvider<List<Recipe>>(
  (ref) async {
    final dio = ref.read(dioProvider);
    final response = await dio.get('/recipes.json');
    return (response.data as List).map((e) => Recipe.fromJson(e)).toList();
  },
);

final recipeDetailProvider =
    FutureProvider.autoDispose.family<RecipeDetails, int>(
  (ref, recipeId) async {
    final cancelToken = CancelToken();
    ref.onDispose(cancelToken.cancel);

    final dio = ref.read(dioProvider);
    final response = await dio.get('/recipe_detail/$recipeId.json',
        cancelToken: cancelToken);
    return RecipeDetails.fromJson(response.data);
  },
);
