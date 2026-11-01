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
      Movie(
        id: "m3",
        title: "Stranger Things",
        synopsis:
            "When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces and one strange little girl.",
        ageRating: "12",
        screeningTime: "Friday 17 Oct 2026 19:00",
        ticketPrice: 9.00,
        posterImagePath: "images/Stranger Things.jpg",
      )
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
