import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:recipe_viewer/domain/recipes/ingredient.dart';
import 'package:recipe_viewer/generated/locale_keys.g.dart';
import 'package:recipe_viewer/ui/recipes/utils/dimens.dart';

class IngredientsView extends StatelessWidget {
  final List<Ingredient> ingredients;
  const IngredientsView({Key? key, required this.ingredients})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: Dimens.spacing24, vertical: Dimens.spacing16),
      color: theme.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(LocaleKeys.ingredients.tr(), style: theme.textTheme.headline6),
          const SizedBox(height: Dimens.spacing8),
          ...ingredients
              .map(
                (ingredient) => _IngredinetRow(ingredient: ingredient),
              )
              .toList(),
        ],
      ),
    );
  }
}

class _IngredinetRow extends StatelessWidget {
  final Ingredient ingredient;
  const _IngredinetRow({Key? key, required this.ingredient}) : super(key: key);

  String get _text {
    if (ingredient.unit != null && ingredient.measure != null) {
      return '${ingredient.measure} ${ingredient.unit} ${ingredient.name}';
    } else if (ingredient.unit == null && ingredient.measure != null) {
      return '${ingredient.measure}  ${ingredient.name}';
    }
    return ingredient.name;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DefaultTextStyle(
      style: theme.textTheme.bodyText1!,
      child: Row(
        children: [
          Text("• "),
          Expanded(
            child: Text(_text),
          ),
        ],
      ),
    );
  }
}
