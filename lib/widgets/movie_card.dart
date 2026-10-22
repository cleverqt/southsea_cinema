import 'package:flutter/material.dart';
import 'package:southsea_cinema/models/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  final VoidCallback onBookPressed;

  const MovieCard({
    super.key,
    required this.movie,
    required this.onBookPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image.asset(movie.posterImagePath, height: 120),
          Text("${movie.title} (${movie.ageRating})"),
          Text(movie.synopsis),
          Text(movie.screeningTime),
          ElevatedButton(
            onPressed: onBookPressed,
            child: const Text("BOOK NOW"),
          )
        ],
      ),
    );
  }
}
