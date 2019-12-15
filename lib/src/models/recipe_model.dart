class Recipe {
  String _title;

  Recipe(result) {
    _title = result['title'];
  }

  String get title => _title;
}