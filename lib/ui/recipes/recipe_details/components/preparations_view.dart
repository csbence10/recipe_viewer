import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:recipe_viewer/generated/locale_keys.g.dart';
import 'package:recipe_viewer/ui/recipes/utils/dimens.dart';

class PreparationsView extends StatelessWidget {
  final String steps;
  const PreparationsView({Key? key, required this.steps}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: Dimens.spacing24, vertical: Dimens.spacing16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(LocaleKeys.preparation.tr(), style: textTheme.headline5),
          const SizedBox(height: Dimens.spacing8),
          Text(steps, style: textTheme.bodyText2),
        ],
      ),
    );
  }
}
