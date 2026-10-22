import 'package:flutter/material.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';
import 'package:southsea_cinema/widgets/movie_card.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final repo = MovieRepository();
    final movies = repo.getMovies();
    return Scaffold(
      appBar: AppBar(title: const Text("Southsea Cinema")),
      drawer: const NavDrawer(),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return MovieCard(
            movie: movie,
            onBookPressed: () {
              Navigator.pushNamed(
                context,
                "/listing",
                arguments: movie,
              );
            },
          );
        },
      ),
    );
  }
}
