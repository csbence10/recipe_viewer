import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe_viewer/data/recipes/recipe_list_provider.dart';
import 'package:recipe_viewer/generated/locale_keys.g.dart';
import 'package:recipe_viewer/ui/recipes/recipe_list/components/recipe_list_item.dart';

class RecipeListScreen extends StatelessWidget {
  const RecipeListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          tr(LocaleKeys.breakfast),
        ),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final recipes = ref.watch(recipeListProvider);
          return AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            child: recipes.when(
                data: (recipes) => ListView.builder(
                      itemBuilder: (_, index) =>
                          RecipeListItem(recipe: recipes[index]),
                      itemCount: recipes.length,
                    ),
                loading: () => Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                error: (error, _) => Text(error.toString())),
          );
        },
      ),
    );
  }
}
