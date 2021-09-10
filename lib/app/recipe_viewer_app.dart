import 'package:flutter/material.dart';
import 'package:recipe_viewer/ui/recipes/recipe_list/recipe_list_screen.dart';
import 'package:recipe_viewer/ui/recipes/utils/app_colors.dart';
import 'package:recipe_viewer/ui/recipes/utils/text_styles.dart';

class RecipeViewerApp extends StatelessWidget {
  const RecipeViewerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat',
        appBarTheme: AppBarTheme(
            brightness: Brightness.dark,
            textTheme: TextTheme(headline6: TextStyles.appBar),
            elevation: 0,
            color: AppColors.white),
      ),
      home: RecipeListScreen(),
    );
  }
}
