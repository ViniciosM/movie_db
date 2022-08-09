import 'package:dio/dio.dart';
import 'package:movie_db/services/dio_service.dart';

class DioServiceImp implements DioService {
  @override
  Dio getDio() {
    return Dio(BaseOptions(
        baseUrl: 'https://api.themoviedb.org/4/',
        headers: {'content-type': 'sdfsf', 'authorization': 'sadfsdf'}));
  }
}
