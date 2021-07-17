import 'package:flutter/material.dart';
import 'package:movie_app/core/contants/styles.dart';
import 'package:movie_app/core/models/movie.dart';

class MovieTile extends StatelessWidget {
  final Movie movie;

  MovieTile(this.movie);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Image.asset(
            '${movie.imgUrl}',
            height: 70,
            width: 120,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${movie.name}',
                style: pinkTextStyle.copyWith(fontSize: 13),
              ),
              SizedBox(height: 4),
              Text('${movie.details}',
                  style: pinkTextStyle.copyWith(fontSize: 11)),
            ],
          ),
        ],
      ),
    );
  }
}
