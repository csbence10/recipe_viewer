import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe_viewer/ui/recipes/utils/app_colors.dart';
import 'package:recipe_viewer/ui/recipes/utils/routes.dart';
import 'package:recipe_viewer/ui/recipes/utils/text_styles.dart';

class RecipeViewerApp extends StatelessWidget {
  const RecipeViewerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      // Uncomment this to use mocked data
      // overrides: [dioProvider.overrideWithValue((MockDio()))],
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Montserrat',
          scaffoldBackgroundColor: AppColors.white,
          appBarTheme: AppBarTheme(
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: AppColors.black),
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
