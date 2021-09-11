import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe_viewer/data/common/theme_provider.dart';
import 'package:recipe_viewer/ui/recipes/utils/app_theme.dart';
import 'package:recipe_viewer/ui/recipes/utils/routes.dart';

class RecipeViewerApp extends StatelessWidget {
  const RecipeViewerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      // Uncomment this to use mocked data
      // overrides: [dioProvider.overrideWithValue((MockDio()))],
      child: Consumer(builder: (context, ref, child) {
        final themeState = ref.watch(appThemeProvider);
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          themeMode: themeState.isDark ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          routes: Routes.routes,
          initialRoute: Routes.list,
        );
      }),
    );
  }
}
