import 'package:flutter/material.dart';
import 'package:movie_db/controllers/movie_controller.dart';
import 'package:movie_db/repositories/movies_respository_imp.dart';
import 'package:movie_db/services/dio_service_imp.dart';

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
      
    );
  }
}
