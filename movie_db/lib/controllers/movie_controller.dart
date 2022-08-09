

import 'package:flutter/material.dart';
import 'package:movie_db/repositories/movies_repository.dart';

import '../models/movies_model.dart';

class MovieController {

 final MoviesRepository _moviesRepository;

 MovieController(this._moviesRepository){
  fetch();
 }

 late ValueNotifier<Movies> movies;

 fetch() async {
  movies.value = await _moviesRepository.getMovies();
 }

}