import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_viewer/generated/locale_keys.g.dart';
import 'package:recipe_viewer/ui/recipes/utils/dimens.dart';
import 'package:recipe_viewer/ui/recipes/utils/text_styles.dart';

class ErrorView extends StatelessWidget {
  final VoidCallback onRetry;
  const ErrorView({Key? key, required this.onRetry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error, color: Colors.red, size: 50),
          const SizedBox(height: Dimens.spacing8),
          Text(LocaleKeys.error.tr()),
          const SizedBox(height: Dimens.spacing16),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  padding:
                      const EdgeInsets.symmetric(horizontal: Dimens.spacing48)),
              child: Text(
                LocaleKeys.retry.tr(),
                style: TextStyles.subtitle.copyWith(color: Colors.white),
              ),
              onPressed: onRetry),
        ],
      ),
    );
  }
}
