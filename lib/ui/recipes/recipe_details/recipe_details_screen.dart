import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe_viewer/data/recipes/recipe_provider.dart';
import 'package:recipe_viewer/domain/recipes/ingredient.dart';
import 'package:recipe_viewer/ui/components/activity_indicator.dart';
import 'package:recipe_viewer/ui/components/error_view.dart';
import 'package:recipe_viewer/ui/recipes/recipe_details/components/bottom_shadow_view.dart';
import 'package:recipe_viewer/ui/recipes/recipe_details/components/details_app_bar.dart';
import 'package:recipe_viewer/ui/recipes/recipe_details/components/ingredients_view.dart';
import 'package:recipe_viewer/ui/recipes/recipe_details/components/preparations_view.dart';
import 'package:recipe_viewer/ui/recipes/recipe_details/components/recipe_info_view.dart';
import 'package:recipe_viewer/ui/recipes/utils/dimens.dart';

class RecipeDetailsScreen extends StatefulWidget {
  const RecipeDetailsScreen({Key? key}) : super(key: key);

  @override
  _RecipeDetailsScreenState createState() => _RecipeDetailsScreenState();
}

class _RecipeDetailsScreenState extends State<RecipeDetailsScreen> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final recipeId = ModalRoute.of(context)?.settings.arguments as int;
    return Scaffold(
      bottomNavigationBar: const BottomShadowView(),
      body: Consumer(
        builder: (context, ref, child) {
          final details = ref.watch(recipeDetailProvider(recipeId));
          return AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            child: details.when(
              data: (details) => CustomScrollView(
                controller: _scrollController,
                slivers: [
                  DetailsAppBar(
                    title: details.name,
                    imageUrl: details.imageUrl,
                    scrollController: _scrollController,
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _PersistentHeader(
                      child: RecipeInfoView(
                        ingredientsCount: details.ingredients.length,
                        kcalCount: details.kcal,
                        minutes: details.minutes,
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: IngredientsView(
                        ingredients: details.ingredients
                            .whereType<Ingredient>()
                            .toList()),
                  ),
                  SliverToBoxAdapter(
                    child: PreparationsView(steps: details.steps),
                  ),
                  SliverToBoxAdapter(
                    child: const SizedBox(
                      height: Dimens.spacing48,
                    ),
                  )
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
    );
  }
}

class _PersistentHeader extends SliverPersistentHeaderDelegate {
  final Widget child;

  _PersistentHeader({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 56.0;

  @override
  double get minExtent => 56.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
