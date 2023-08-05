import 'package:flutter/material.dart';
import 'package:go_router_prac/widgets/app_bar.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ApplicationBar(
        child: Text("Admin"),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: const Center(
          child: Text(
            "Admin",
            style: TextStyle(fontSize: 35.0),
          ),
        ),
      ),
    );
  }
}
