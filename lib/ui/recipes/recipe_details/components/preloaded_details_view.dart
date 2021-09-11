import 'package:flutter/material.dart';
import 'package:recipe_viewer/domain/recipes/recipe.dart';
import 'package:recipe_viewer/ui/recipes/recipe_details/components/details_app_bar.dart';

class PreloadedDetailsView extends StatelessWidget {
  final Recipe recipe;
  final Widget child;
  const PreloadedDetailsView(
      {Key? key, required this.recipe, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: NeverScrollableScrollPhysics(),
      slivers: [
        DetailsAppBar(
          title: recipe.name,
          imageUrl: recipe.imageUrl,
        ),
        SliverFillRemaining(
          child: child,
        )
      ],
    );
  }
}
