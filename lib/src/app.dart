import 'package:flutter/material.dart';
import 'package:flutter_bonapp/src/ui/recipe_list.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.deepOrange),
      home: Scaffold(
        body: RecipesList(),
      ),
    );
  }
}