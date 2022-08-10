import 'package:flutter/material.dart';
import 'package:movie_db/controllers/movie_controller.dart';
import 'package:movie_db/models/movies_model.dart';

import 'package:movie_db/repositories/movies_respository_imp.dart';
import 'package:movie_db/services/dio_service_imp.dart';

import '../widgets/custom_card_movie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MovieController _controller =
      MovieController(MoviesRepositoryImp(DioServiceImp()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Movies',
            style: Theme.of(context).textTheme.headline4,
          ),
          ValueListenableBuilder<Movies?>(
            valueListenable: _controller.movies,
            builder: (_, movies, __) {
              return movies != null
                  ? ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: movies.listMovies.length,
                      itemBuilder: (_, idx) =>
                          CustomCardMovies(movies.listMovies[idx]),
                      separatorBuilder: (_, idx) => Divider(),
                    )
                  : Container();
            },
          )
        ],
      ),
    ));
  }
}
