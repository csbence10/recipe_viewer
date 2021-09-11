import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe_viewer/data/recipes/recipe_provider.dart';
import 'package:recipe_viewer/domain/recipes/ingredient.dart';
import 'package:recipe_viewer/generated/locale_keys.g.dart';
import 'package:recipe_viewer/ui/components/activity_indicator.dart';
import 'package:recipe_viewer/ui/components/error_view.dart';
import 'package:recipe_viewer/ui/recipes/recipe_details/components/bottom_shadow_view.dart';
import 'package:recipe_viewer/ui/recipes/recipe_details/components/ingredients_view.dart';
import 'package:recipe_viewer/ui/recipes/recipe_details/components/preparations_view.dart';
import 'package:recipe_viewer/ui/recipes/recipe_details/components/recipe_details_header_view.dart';
import 'package:recipe_viewer/ui/recipes/recipe_details/components/recipe_info_view.dart';
import 'package:recipe_viewer/ui/recipes/utils/dimens.dart';

class RecipeDetailsScreen extends StatelessWidget {
  const RecipeDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recipeId = ModalRoute.of(context)?.settings.arguments as int;
    return Scaffold(
      bottomNavigationBar: const BottomShadowView(),
      appBar: AppBar(
        title: Text(
          LocaleKeys.breakfast.tr(),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Consumer(
          builder: (context, ref, child) {
            final details = ref.watch(recipeDetailProvider(recipeId));
            return AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: details.when(
                data: (details) => ListView(
                  children: [
                    RecipeDetailsHeaderView(
                      imageUrl: details.imageUrl,
                      name: details.name,
                      minutes: details.minutes.toString(),
                    ),
                    RecipeInfoView(
                      ingredientsCount: details.ingredients.length,
                      kcalCount: details.kcal,
                      minutes: details.minutes,
                    ),
                    IngredientsView(
                        ingredients: details.ingredients
                            .whereType<Ingredient>()
                            .toList()),
                    PreparationsView(steps: details.steps),
                    const SizedBox(height: Dimens.spacing48)
                  ],
                ),
                loading: () => const ActivityIndicator(),
                error: (_, __) => ErrorView(
                  onRetry: () => ref.refresh(
                    recipeDetailProvider(recipeId),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
