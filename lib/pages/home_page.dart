import 'package:code_management/controller/movie_controller.dart';
import 'package:code_management/model/movie.dart';
import 'package:code_management/navigation.dart';
import 'package:code_management/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<MovieController>(
            init: MovieController(),
            builder: (m) {
              return Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          Constants.title,
                          style: Constants.titleText,
                        ),
                        const Text("Upcoming Video List",
                            style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 400,
                          child: ListView.builder(
                            itemBuilder: (BuildContext, index) {
                              return InkWell(
                                onTap: () {
                                  Get.toNamed(Routes.movieDetail, parameters: {
                                    "id": m.movieList[index].id.toString(),
                                    "image": m.movieList[index].backdropPath
                                        .toString(),
                                    "title":
                                        m.movieList[index].title.toString(),
                                    "isFav":
                                        m.movieList[index].isFav.toString(),
                                  });
                                },
                                child: Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        width: 150,
                                        height: 200,
                                        child: ClipRRect(
                                          child: Image.asset(
                                            m.movieList[index].backdropPath
                                                .toString(),
                                            fit: BoxFit.fill,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 150,
                                      child: Row(
                                        children: [
                                          Flexible(
                                            flex: 5,
                                            child: Text(
                                              m.movieList[index].title
                                                  .toString(),
                                            ),
                                          ),
                                          Flexible(
                                            flex: 1,
                                            child: IconButton(
                                                onPressed: () {
                                                  m.setFav(index);
                                                },
                                                icon: m.movieList[index]
                                                            .isFav ==
                                                        true
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
                                    )
                                  ],
                                ),
                              );
                            },
                            itemCount: m.movieList.length,
                            shrinkWrap: true,
                            padding: const EdgeInsets.all(5),
                            scrollDirection: Axis.horizontal,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
