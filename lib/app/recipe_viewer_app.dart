import 'package:flutter/material.dart';

class RecipeViewerApp extends StatelessWidget {
  const RecipeViewerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Receptek'),
        ),
      ),
    );
  }
}
