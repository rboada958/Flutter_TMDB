import 'package:flutter/material.dart';
import 'package:flutter_tmdb/src/blocs/movies_bloc.dart';
import 'package:flutter_tmdb/src/models/movies.dart';
import 'package:flutter_tmdb/src/ui/widgets/custom_list_item.dart';

// ignore: must_be_immutable
class PopularMovieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bloc.fetchAllPopularMovies();
    return Scaffold(
      body: StreamBuilder(
        stream: bloc.allPopularMovies,
        builder: (context, AsyncSnapshot<Movies> snapshot) {
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

  Widget buildList(AsyncSnapshot<Movies> snapshot) {
    return ListView.builder(
      itemCount: snapshot.data.results.length,
      itemBuilder: (context, index) {
        return CustomListItem(snapshot.data.results[index]);
      },
    );
  }
}
