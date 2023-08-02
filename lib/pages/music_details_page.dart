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
          children: [
            Image.asset("assets/sound.png"),
          ],
        ),
      ),
    );
  }
}
