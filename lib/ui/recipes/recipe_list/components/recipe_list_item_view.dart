import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:recipe_viewer/domain/recipes/recipe.dart';
import 'package:recipe_viewer/ui/recipes/utils/dimens.dart';
import 'package:recipe_viewer/ui/recipes/utils/routes.dart';
import 'package:recipe_viewer/ui/recipes/utils/text_styles.dart';

class RecipeListItemView extends StatelessWidget {
  final Recipe recipe;
  const RecipeListItemView({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(Routes.details, arguments: recipe.id);
      },
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CachedNetworkImage(
            imageUrl: recipe.imageUrl,
            height: 260,
            fit: BoxFit.fitHeight,
          ),
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black.withOpacity(0.5)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.65, 0.95],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: Dimens.spacing16,
              left: Dimens.spacing16,
            ),
            child: Text(
              recipe.name,
              overflow: TextOverflow.clip,
              style: TextStyles.header,
            ),
          )
        ],
      ),
    );
  }
}
