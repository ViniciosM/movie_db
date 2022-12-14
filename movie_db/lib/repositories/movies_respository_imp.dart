import 'package:movie_db/models/movies_model.dart';
import 'package:movie_db/repositories/movies_repository.dart';
import 'package:movie_db/services/dio_service.dart';
import 'package:movie_db/utils/apis.util.dart';

class MoviesRepositoryImp implements MoviesRepository {
  final DioService _dioService;
  MoviesRepositoryImp(this._dioService);

  @override
  Future<Movies> getMovies() async {
    var result = await _dioService.getDio().get(API.REQUEST_MOVIE_LIST);

    return Movies.fromJson(result.data);
  }
}
