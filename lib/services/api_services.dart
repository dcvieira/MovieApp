import 'package:movie_app/models/movie_model.dart';

class ApiServices {
  List<Movie> getMovies() {
    // Cria a lista de filmes

    final movie1 = Movie(
      adult: false,
      backdropPath: "/yDHYTfA3R0jFYba16jBB1ef8oIt.jpg",
      genreIds: [28, 35, 878],
      id: 533535,
      originalLanguage: "en",
      originalTitle: "Deadpool VS Wolverine",
      overview: "Deadpool & Wolverine",
      popularity: 13902.556,
      posterPath: "/8cdWjvZQUExUUTzyp4t6EDMubfO.jpg",
      releaseDate: DateTime.parse("2024-07-24"),
      title: "Deadpool VS Wolverine",
      video: false,
      voteAverage: 7.858,
      voteCount: 1721,
    );

    final movie2 = Movie(
      adult: false,
      backdropPath: "/lgkPzcOSnTvjeMnuFzozRO5HHw1.jpg",
      genreIds: [28, 35, 878],
      id: 533535,
      originalLanguage: "en",
      originalTitle: "Despicable Me 4",
      overview: "Despicable Me 4",
      popularity: 13902.556,
      posterPath: "/wWba3TaojhK7NdycRhoQpsG0FaH.jpg",
      releaseDate: DateTime.parse("2024-07-24"),
      title: "Despicable Me 4",
      video: false,
      voteAverage: 7.858,
      voteCount: 1721,
    );

    final movie3 = Movie(
      adult: false,
      backdropPath: "/stKGOm8UyhuLPR9sZLjs5AkmncA.jpg",
      genreIds: [28, 35, 878],
      id: 533535,
      originalLanguage: "en",
      originalTitle: "Inside Out 2",
      overview: "Inside Out 2e",
      popularity: 13902.556,
      posterPath: "/stKGOm8UyhuLPR9sZLjs5AkmncA.jpg",
      releaseDate: DateTime.parse("2024-07-24"),
      title: "Inside Out 2",
      video: false,
      voteAverage: 7.858,
      voteCount: 1721,
    );

    List<Movie> movies = [
      movie1,
      movie2,
      movie3,
      movie1,
      movie2,
      movie3,
      movie1,
      movie2,
      movie3
    ];
    return movies;
  }
}
