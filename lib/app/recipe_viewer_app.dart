import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe_viewer/ui/recipes/recipe_list/recipe_list_screen.dart';
import 'package:recipe_viewer/ui/recipes/utils/app_colors.dart';
import 'package:recipe_viewer/ui/recipes/utils/routes.dart';
import 'package:recipe_viewer/ui/recipes/utils/text_styles.dart';

class RecipeViewerApp extends StatelessWidget {
  const RecipeViewerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Montserrat',
          appBarTheme: AppBarTheme(
            brightness: Brightness.light,
            textTheme: TextTheme(headline6: TextStyles.appBar),
            elevation: 0,
            color: AppColors.white,
          ),
        ),
        routes: Routes.routes,
        initialRoute: Routes.list,
      ),
    );
  }
}
