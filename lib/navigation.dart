import 'package:code_management/pages/home_page.dart';
import 'package:code_management/pages/movie_detail.dart';
import 'package:get/get.dart';

abstract class Routes {
  static const initialRoute = '/';

  static const movieDetail = '/movieDetail';
}

final appPages = [
  GetPage(
    name: Routes.initialRoute,
    page: () => const HomePage(),
  ),
  GetPage(
    name: Routes.movieDetail,
    page: () => const MovieDetail(),
  ),
];
