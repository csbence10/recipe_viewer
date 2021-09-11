import 'package:flutter/material.dart';
import 'package:recipe_viewer/ui/recipes/utils/app_colors.dart';

class ActivityIndicator extends StatelessWidget {
  const ActivityIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator.adaptive(
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.black),
      ),
    );
  }
}
