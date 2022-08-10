

import 'package:flutter/material.dart';
import 'package:movie_db/utils/apis.util.dart';

import '../models/movies_model.dart';

class CustomCardMovies extends StatelessWidget {
  const CustomCardMovies({ Key? key, required this.movie }) : super(key: key);

  final Movies movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Row(
        children: [
          Image.network(API.REQUEST_IMG(movie.posterPath)),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: Theme.of(context).textTheme.headline6,
                    softWrap: true,
                    overflow: TextOverflow.visible,
                  ),
                  Spacer(),
                  Text('Popularidade:', +movie.popularity.toString()),
                  const SizedBox(height: 10),
                  Text('Votos:' +movie.voteAverage.toString()),
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}