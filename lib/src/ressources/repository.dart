
import 'package:flutter_bonapp/src/models/recipes_result.dart';

import 'recipes_api_provider.dart';

class Repository {
  final moviesApiProvider = RecipesApiProvider();

  Future<RecipesResult> fetchAllMovies() => moviesApiProvider.fetchRecipesList();
}