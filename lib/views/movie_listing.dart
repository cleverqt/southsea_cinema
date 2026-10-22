import 'package:flutter/material.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  int selectedTickets = 1;

  @override
  Widget build(BuildContext context) {
    final Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;
    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      drawer: const NavDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(movie.title),
            Image.asset(movie.posterImagePath, height: 150),
            Text("Price: ${movie.formattedPrice}"),
            Text(movie.synopsis),
            DropdownButton<int>(
              value: selectedTickets,
              items: const [
                DropdownMenuItem(value: 1, child: Text("1")),
                DropdownMenuItem(value: 2, child: Text("2")),
                DropdownMenuItem(value: 3, child: Text("3")),
              ],
              onChanged: (val) {
                setState(() {
                  if (val != null) selectedTickets = val;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("$selectedTickets ticket(s) added")));
              },
              child: const Text("Add to order"),
            )
          ],
        ),
      ),
    );
  }
}
