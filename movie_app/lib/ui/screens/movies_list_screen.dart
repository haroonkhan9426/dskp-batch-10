import 'package:flutter/material.dart';
import 'package:movie_app/core/contants/colors.dart';
import 'package:movie_app/core/models/movie.dart';
import 'package:movie_app/ui/custom_widgets/movie_tile.dart';

class MoviesListScreen extends StatelessWidget {
  final List<Movie> movies = [
    Movie(
      name: 'Jagni',
      details: '6GM : HD Quality',
      imgUrl: 'assets/images/movie-1.jpg',
    ),
    Movie(
      name: 'Start Wars',
      details: '6GM : HD Quality',
      imgUrl: 'assets/images/movie-1.jpg',
    ),
    Movie(
      name: 'Student of the year',
      details: '6GM : HD Quality',
      imgUrl: 'assets/images/movie-1.jpg',
    ),
    Movie(
      name: 'Three ideits',
      details: '6GM : HD Quality',
      imgUrl: 'assets/images/movie-1.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          top: 30,
        ),
        child: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return MovieTile(movies[index]);
          },
        ),
      ),
    );
  }
}
