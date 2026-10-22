import '../models/movie.dart';

class MovieRepository {
  List<Movie> getMovies() {
    return [
      Movie(
        id: "m1",
        title: "NE ZHA 2",
        synopsis: "A story about Ne Zha and Ao Bing protecting Chentang Pass.",
        ageRating: "PG",
        screeningTime: "Saturday 11 Oct 2026 14:00",
        ticketPrice: 6.00,
        posterImagePath: "images/nezha2.jpg",
      ),
      Movie(
        id: "m2",
        title: "PLEASANT GOAT",
        synopsis: "Goats and wolf work together to save their world.",
        ageRating: "U",
        screeningTime: "Sunday 12 Oct 2026 17:30",
        ticketPrice: 6.00,
        posterImagePath: "images/xiyangyang.jpg",
      ),
    ];
  }

  Movie? getMovieById(String id) {
    final list = getMovies();
    try {
      return list.firstWhere((movie) => movie.id == id);
    } catch (e) {
      return null;
    }
  }
}
