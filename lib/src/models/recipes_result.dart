import 'recipe_model.dart';

class RecipesResult {
  List<Recipe> _recipes;

  RecipesResult.fromJson(Map<String, dynamic> parsedJson) {
    print(parsedJson['recipes'].length);
    List<Recipe> temp = [];
    for (int i = 0; i < parsedJson['recipes'].length; i++) {
      Recipe recipe = Recipe(parsedJson['recipes'][i]);
      temp.add(recipe);
    }

    _recipes = temp;
  }

  List<Recipe> get results => _recipes;
}
