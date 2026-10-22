import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';
import 'package:southsea_cinema/models/movie.dart';

void main() {
  group('MovieRepository getMovieById tests', () {
    final repo = MovieRepository();

    test('returns movie when id exists', () {
      final Movie? result = repo.getMovieById("m1");
      expect(result, isNotNull);
      expect(result?.title, "NE ZHA 2");
    });

    test('returns null when id does NOT exist', () {
      final Movie? result = repo.getMovieById("m99");
      expect(result, isNull);
    });
  });
}
