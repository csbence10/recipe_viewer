import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:recipe_viewer/domain/recipes/recipe.dart';
import 'package:recipe_viewer/ui/recipes/utils/text_styles.dart';

class RecipeListItem extends StatelessWidget {
  final Recipe recipe;
  const RecipeListItem({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        CachedNetworkImage(
          imageUrl: recipe.imageUrl,
          height: 260,
          fit: BoxFit.fitHeight,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 24, left: 24),
          child: Text(
            recipe.name,
            style: TextStyles.header,
          ),
        )
      ],
    );
  }
}
