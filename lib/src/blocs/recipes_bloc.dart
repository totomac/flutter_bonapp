
import 'package:flutter_bonapp/src/models/recipes_result.dart';
import 'package:flutter_bonapp/src/ressources/repository.dart';
import 'package:rxdart/rxdart.dart';

class RecipesBloc {
  final _repository = Repository();
  final _recipesFetcher = PublishSubject<RecipesResult>();

  Observable<RecipesResult> get allRecipes => _recipesFetcher.stream;

  fetchAllRecipes() async {
    RecipesResult itemModel = await _repository.fetchAllMovies();
    _recipesFetcher.sink.add(itemModel);
  }

  dispose() {
    _recipesFetcher.close();
  }
}

final bloc = RecipesBloc();