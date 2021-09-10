import 'package:flutter/material.dart';
import 'package:recipe_viewer/ui/recipes/recipe_details/recipe_details_screen.dart';
import 'package:recipe_viewer/ui/recipes/recipe_list/recipe_list_screen.dart';

class Routes {
  static const list = '/list';
  static const details = '/details';

  static Map<String, WidgetBuilder> get routes => {
        list: (_) => RecipeListScreen(),
        details: (_) => RecipeDetailsScreen(),
      };
}
