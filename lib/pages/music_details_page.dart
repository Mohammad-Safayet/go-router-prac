import 'package:flutter/material.dart';
import 'package:go_router_prac/widgets/app_bar.dart';

class MusicDetailsPage extends StatelessWidget {
  const MusicDetailsPage({
    Key? key,
    required this.music,
  }) : super(key: key);

  final Map<String, String> music;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
        child: Text(
          music.keys.toList()[0],
        ),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // <a href="https://www.flaticon.com/free-icons/bass" title="bass icons">Bass icons created by Good Ware - Flaticon</a>
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 35.0,
                vertical: 25.0,
              ),
              child: Hero(
                tag: 'music_image_${music.keys.toList()[0]}',
                child: Image.asset("assets/sound.png"),
              ),
            ),
            // Song name
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                music.keys.toList()[0],
                style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Artist name
            Text(
              music.values.toList()[0],
            ),
          ],
        ),
      ),
    );
  }
}
