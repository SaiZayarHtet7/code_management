import 'package:code_management/model/movie.dart';
import 'package:code_management/utils/constants.dart';
import 'package:get/get.dart';

class MovieController extends GetxController {
  List<Movie> movieList = [
    Constants.pop0,
    Constants.pop1,
    Constants.pop2,
    Constants.up0,
    Constants.up1,
    Constants.up2,
  ];

  RxBool loading = false.obs;

  void fetchMovie() {
    loading = true.obs;
    update();
  }

  void setFav(movieId) {
    if (movieList[movieId].isFav == true) {
      movieList[movieId].isFav = false;
    } else {
      movieList[movieId].isFav = true;
    }
    update();
  }
}
