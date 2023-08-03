import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          final music = {songs[index]: artists[index]};
          return ListTile(
            // <a href="https://www.flaticon.com/free-icons/music" title="music icons">Music icons created by Freepik - Flaticon</a>
            leading: Hero(
              tag: 'music_image_${music.keys.toList()[0]}',
              child: Image.asset(
                "assets/music.png",
              ),
            ),
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
            trailing: IconButton(
              onPressed: () {
                context.go("/music_page/details", extra: music);
              },
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
              ),
            ),
          );
        },
      ),
    );
  }
}
