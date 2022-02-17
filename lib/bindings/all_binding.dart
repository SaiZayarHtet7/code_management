import 'package:code_management/controller/movie_controller.dart';
import 'package:get/get.dart';

class AllBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MovieController>(() => MovieController());
  }
}
