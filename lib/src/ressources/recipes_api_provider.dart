import 'dart:async';
import 'package:flutter_bonapp/src/models/recipes_result.dart';
import 'package:http/http.dart' show Client;
import 'dart:convert';

class RecipesApiProvider {
  Client client = Client();

  Future<RecipesResult> fetchRecipesList() async {
    print("entered");
    final response = await client
        .get("https://mdiyu1k1z1.execute-api.eu-west-1.amazonaws.com/default/recipes");
    print(response.body.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return RecipesResult.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}