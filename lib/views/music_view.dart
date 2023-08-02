import 'package:flutter/material.dart';

class MusicView extends StatelessWidget {
  MusicView({super.key});

  final Map<String, String> products = {
    "In The End": "Linkin Park",
    "Numb": "Linkin Park",
    "My Name Is": "Eminem",
    "Lonely": "Akon",
    "Sorry, Blame It On Me": "Akon",
    "Fireflies": "Owl City",
    "Boulevard Of Broken Dreams": "Green Day",
    "Wake Me Up When September Ends": "Green Day",
    "They Don’t Care About Us": "Michael Jackson",
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final songs = products.keys.toList();
          final artists = products.values.toList();
          return ListTile(
            // <a href="https://www.flaticon.com/free-icons/bass" title="bass icons">Bass icons created by Good Ware - Flaticon</a>
            leading: Image.asset("name"),
            title: Text(
              songs[index],
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              artists[index],
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          );
        },
      ),
    );
  }
}
