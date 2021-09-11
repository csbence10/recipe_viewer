import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe_viewer/data/common/theme_provider.dart';
import 'package:recipe_viewer/data/recipes/recipe_provider.dart';
import 'package:recipe_viewer/generated/locale_keys.g.dart';
import 'package:recipe_viewer/ui/components/activity_indicator.dart';
import 'package:recipe_viewer/ui/components/error_view.dart';
import 'package:recipe_viewer/ui/recipes/recipe_list/components/recipe_list_item_view.dart';
import 'package:recipe_viewer/ui/recipes/utils/app_colors.dart';

class RecipeListScreen extends StatelessWidget {
  const RecipeListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          tr(LocaleKeys.breakfast),
        ),
        leading: Consumer(
          builder: (context, ref, child) {
            final themeState = ref.watch(appThemeProvider);
            return IconButton(
              onPressed: themeState.toggleTheme,
              icon: Icon(
                themeState.isDark ? Icons.light_mode : Icons.dark_mode,
                color: themeState.isDark ? AppColors.white : AppColors.black,
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Consumer(
          builder: (context, ref, child) {
            final recipes = ref.watch(recipeListProvider);
            return AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: recipes.when(
                data: (recipes) => ListView.builder(
                  itemBuilder: (_, index) =>
                      RecipeListItemView(recipe: recipes[index]),
                  itemCount: recipes.length,
                ),
                loading: () => const ActivityIndicator(),
                error: (_, __) => ErrorView(
                  onRetry: () => ref.refresh(recipeListProvider),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
