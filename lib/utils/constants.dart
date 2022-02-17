import 'package:code_management/model/movie.dart';
import 'package:flutter/cupertino.dart';

class Constants {
  static String title = "What are you looking for ?";

  static String search = "Search for movies,events and more";

  static TextStyle titleText =
      const TextStyle(fontSize: 25, fontWeight: FontWeight.bold);

  static Movie pop0 = Movie(
      adult: false,
      backdropPath: "assets/image/spiderman_poster.jpeg",
      genreIds: [28, 12, 878],
      id: 0,
      originalLanguage: "en",
      originalTitle: "Spider-Man: No Way Home",
      overview:
          "Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.",
      popularity: 7700.02,
      posterPath: "assets/image/spiderman_poster.jpeg",
      releaseDate: "2021-12-15",
      title: "Spider-Man: No Way Home",
      video: false,
      voteAverage: 8.4,
      voteCount: 7867,
      isFav: false);
  static Movie pop1 = Movie(
      adult: false,
      backdropPath: "assets/image/kingsman.jpeg",
      genreIds: [28, 12, 53, 10752],
      id: 1,
      originalLanguage: "en",
      originalTitle: "The King's Man",
      overview:
          "As a collection of history's worst tyrants and criminal masterminds gather to plot a war to wipe out millions, one man must race against time to stop them.",
      popularity: 7700.02,
      posterPath: "assets/image/kingsman.jpeg",
      releaseDate: "2021-12-2",
      title: "The King's Man",
      video: false,
      voteAverage: 7.1,
      voteCount: 993,
      isFav: false);

  static Movie pop2 = Movie(
      adult: false,
      backdropPath: "assets/image/encanto.jpeg",
      genreIds: [16, 35, 10751, 14],
      id: 2,
      originalLanguage: "en",
      originalTitle: "Encanto",
      overview:
          "The tale of an extraordinary family, the Madrigals, who live hidden in the mountains of Colombia, in a magical house, in a vibrant town, in a wondrous, charmed place called an Encanto. The magic of the Encanto has blessed every child in the family with a unique gift from super strength to the power to heal—every child except one, Mirabel. But when she discovers that the magic surrounding the Encanto is in danger, Mirabel decides that she, the only ordinary Madrigal, might just be her exceptional family's last hope.",
      popularity: 7700.02,
      posterPath: "assets/image/encanto.jpeg",
      releaseDate: "2021-12-2",
      title: "Encanto",
      video: false,
      voteAverage: 7.8,
      voteCount: 4387,
      isFav: false);

  static Movie up0 = Movie(
      adult: false,
      backdropPath: "assets/image/big_red_dog.jpeg",
      genreIds: [16, 35, 10751, 14],
      id: 3,
      originalLanguage: "en",
      originalTitle: "Clifford the Big Red Dog",
      overview:
          "As Emily struggles to fit in at home and at school, she discovers a small red puppy who is destined to become her best friend. When Clifford magically undergoes one heck of a growth spurt, becomes a gigantic dog and attracts the attention of a genetics company, Emily and her Uncle Casey have to fight the forces of greed as they go on the run across New York City. Along the way, Clifford affects the lives of everyone around him and teaches Emily and her uncle the true meaning of acceptance and unconditional love.",
      popularity: 687.779,
      posterPath: "assets/image/big_red_dog.jpeg",
      releaseDate: "2021-11-10",
      title: "Clifford the Big Red Dog",
      video: false,
      voteAverage: 7.3,
      isFav: false,
      voteCount: 1029);
  static Movie up1 = Movie(
      adult: false,
      backdropPath: "assets/image/moonfall.jpeg",
      genreIds: [16, 35, 10751, 14],
      id: 4,
      originalLanguage: "en",
      originalTitle: "Moonfall",
      overview:
          "A mysterious force knocks the moon from its orbit around Earth and sends it hurtling on a collision course with life as we know it.",
      popularity: 433.591,
      posterPath: "assets/image/moonfall.jpeg",
      releaseDate: "2021-11-10",
      title: "Moonfall",
      video: false,
      voteAverage: 6,
      isFav: false,
      voteCount: 112);

  static Movie up2 = Movie(
      adult: false,
      backdropPath: "assets/image/jackass.jpeg",
      genreIds: [16, 35, 10751, 14],
      id: 5,
      originalLanguage: "en",
      originalTitle: "Jackass Forever",
      overview:
          "Celebrate the joy of a perfectly executed shot to the groin as Johnny Knoxville, Steve-O and the rest of the gang return alongside some newcomers for one final round of hilarious, wildly absurd and often dangerous displays of stunts and comedy.",
      popularity: 433.591,
      posterPath: "assets/image/jackass.jpeg",
      releaseDate: "2021-11-10",
      title: "Jackass Forever",
      video: false,
      voteAverage: 6.9,
      isFav: false,
      voteCount: 27);
}
