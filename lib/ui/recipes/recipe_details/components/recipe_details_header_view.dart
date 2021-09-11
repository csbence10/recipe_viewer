import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:recipe_viewer/generated/locale_keys.g.dart';
import 'package:recipe_viewer/ui/recipes/utils/app_colors.dart';
import 'package:recipe_viewer/ui/recipes/utils/dimens.dart';
import 'package:recipe_viewer/ui/recipes/utils/text_styles.dart';

class RecipeDetailsHeaderView extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String minutes;
  const RecipeDetailsHeaderView(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.minutes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        CachedNetworkImage(
          imageUrl: imageUrl,
          height: 400,
          fit: BoxFit.fitHeight,
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: Dimens.spacing16,
            left: Dimens.spacing16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyles.header,
              ),
              const SizedBox(height: Dimens.spacing8),
              Row(
                children: [
                  Icon(Icons.access_time, color: AppColors.white),
                  const SizedBox(width: Dimens.spacing12),
                  Text(
                    LocaleKeys.minutes.tr(args: [minutes]),
                    style: TextStyles.title,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
