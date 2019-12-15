import 'package:flutter/material.dart';
import 'package:flutter_bonapp/src/blocs/recipes_bloc.dart';
import 'package:flutter_bonapp/src/models/recipes_result.dart';

class RecipesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bloc.fetchAllRecipes();
    return Scaffold(
      appBar: AppBar(
        title: Text('Bon APPetit'),
      ),
      body: StreamBuilder(
        stream: bloc.allRecipes,
        builder: (context, AsyncSnapshot<RecipesResult> snapshot) {
          if (snapshot.hasData) {
            return buildList(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget buildList(AsyncSnapshot<RecipesResult> snapshot) {
    return ListView.builder(
        itemCount: snapshot.data.results.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext ctxt, int index) {
          return new ListTile(
            contentPadding: const EdgeInsets.all(16.0),
            title: Text(snapshot.data.results[index].title),
          );
        });
  }
}