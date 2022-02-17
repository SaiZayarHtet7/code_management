import 'package:code_management/controller/movie_controller.dart';
import 'package:code_management/model/movie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MovieDetail extends StatefulWidget {
  const MovieDetail({Key? key}) : super(key: key);

  @override
  _MovieDetailState createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  List<Movie> upcomingMovie = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.parameters["title"].toString()),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              child: Image.asset(
                Get.parameters["image"].toString(),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          GetBuilder<MovieController>(
              init: MovieController(),
              builder: (m) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 5,
                        child: Text(Get.parameters["title"].toString()),
                      ),
                      Flexible(
                        flex: 1,
                        child: IconButton(
                            onPressed: () {
                              print(int.parse(Get.parameters["id"].toString()));
                              Get.find<MovieController>().setFav(
                                  int.parse(Get.parameters["id"].toString()));
                            },
                            icon: m
                                        .movieList[int.parse(
                                            Get.parameters["id"].toString())]
                                        .isFav
                                        .toString() ==
                                    "true"
                                ? const Icon(
                                    Icons.favorite,
                                    color: Colors.pink,
                                  )
                                : const Icon(
                                    Icons.favorite_border,
                                  )),
                      )
                    ],
                  ),
                );
              })
        ],
      )),
    );
  }
}
