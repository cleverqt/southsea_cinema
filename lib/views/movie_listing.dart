import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  int? selectedTickets = 1;

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
          children: [
            const Text("NE ZHA 2 (2025) (12A)"),
            const Text("Southsea Cinema Room"),
            const Text("Thursday 22 Oct 2026, 18:00 - ends at 20:12"),
            const Text("Ne Zha faces new challenges and fights to protect his world and loved ones."),
            const SizedBox(height:30),
            Row(
              children: [
                const Text("Select Quantities (Up to 5 in total):"),
                DropdownButton<int>(
                  value: selectedTickets,
                  items: const [
                    DropdownMenuItem(value:1, child: Text("1")),
                    DropdownMenuItem(value:2, child: Text("2")),
                    DropdownMenuItem(value:3, child: Text("3")),
                    DropdownMenuItem(value:4, child: Text("4")),
                    DropdownMenuItem(value:5, child: Text("5")),
                  ],
                  onChanged: (int? newValue){
                    setState((){
                      selectedTickets = newValue;
        });
             },
        ),
              ],
      ),

      const SizedBox(height:20),
ElevatedButton(
  onPressed: (){
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text("Selected $selectedTickets ticket(s)"),
      ),
    );
  },
  child: const Text("Confirm Booking"),
),

       ],
  ),
      ),
    );
  }
}
