import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';

void main() {
  group('Movie model tests', () {
    test('constructor correctly assigns all properties', () {
      final movie = Movie(
        id: "m1",
        title: "NE ZHA 2",
        synopsis: "A story about Ne Zha and Ao Bing",
        ageRating: "PG",
        screeningTime: "Saturday 11 Oct 2026 14:00",
        ticketPrice: 6.00,
        posterImagePath: "images/nezha2.jpg",
      );
      expect(movie.id, "m1");
      expect(movie.title, "NE ZHA 2");
      expect(movie.ticketPrice, 6.00);
    });

    test('formattedPrice shows two decimals for whole pound', () {
      final movie = Movie(
        id: "m1",
        title: "NE ZHA 2",
        synopsis: "synopsis",
        ageRating: "PG",
        screeningTime: "time",
        ticketPrice: 6.00,
        posterImagePath: "images/nezha2.jpg",
      );
      expect(movie.formattedPrice, "£6.00");
    });

    test('formattedPrice works with pence value', () {
      final movie = Movie(
        id: "m3",
        title: "Test Film",
        synopsis: "synopsis",
        ageRating: "U",
        screeningTime: "time",
        ticketPrice: 6.50,
        posterImagePath: "images/test.jpg",
      );
      expect(movie.formattedPrice, "£6.50");
    });
  });
}
