import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    Key? key,
    this.error,
  }) : super(key: key);

  final GoException? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Theme.of(context).colorScheme.errorContainer,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "404 Not Found",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
              Text(
                error != null ? error!.message : "The route don't exists",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
              TextButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Theme.of(context).colorScheme.onErrorContainer,
                  ),
                ),
                onPressed: () {
                  context.go("/music_page");
                },
                icon: Icon(
                  Icons.exit_to_app,
                  color: Theme.of(context).colorScheme.onError,
                ),
                label: Text(
                  "go back",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Theme.of(context).colorScheme.onError,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
