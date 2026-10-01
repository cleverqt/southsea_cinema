import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatelessWidget {
  const MovieListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Container(
  child: Column(
    children: const [
      Text("NE ZHA 2 (2025) (12A)"),
      Text("Southsea Cinema Room"),
      Text("Thursday 22 Oct 2026, 18:00 - ends at 20:12"),
      Text("Ne Zha faces new challenges and fights to protect his world and loved ones."),
    ],
  ),
),

      
    );
  }
}
