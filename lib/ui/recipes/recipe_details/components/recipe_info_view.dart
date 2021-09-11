import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:recipe_viewer/generated/locale_keys.g.dart';
import 'package:recipe_viewer/ui/recipes/utils/dimens.dart';

class RecipeInfoView extends StatelessWidget {
  final int kcalCount;
  final int minutes;
  final int ingredientsCount;
  const RecipeInfoView(
      {Key? key,
      required this.kcalCount,
      required this.minutes,
      required this.ingredientsCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: theme.scaffoldBackgroundColor,
      height: Dimens.spacing56,
      padding: const EdgeInsets.symmetric(horizontal: Dimens.spacing24),
      child: DefaultTextStyle(
        style: theme.textTheme.bodyText1!,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(LocaleKeys.kcal.tr(args: [kcalCount.toString()])),
            const _VerticalDivider(),
            Text(LocaleKeys.minutes.tr(args: [minutes.toString()])),
            const _VerticalDivider(),
            Text(LocaleKeys.ingredients_count
                .tr(args: [ingredientsCount.toString()])),
          ],
        ),
      ),
    );
  }
}

class _VerticalDivider extends StatelessWidget {
  const _VerticalDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 1,
        height: Dimens.spacing24,
        color: Theme.of(context).dividerColor);
  }
}
