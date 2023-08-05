import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      children: [
        const DrawerHeader(
          child: Center(
            child: Text("Header"),
          ),
        ),
        ListTile(
          title: const Text("Admin"),
          leading: Icon(
            Icons.admin_panel_settings_rounded,
            color: Theme.of(context).colorScheme.primary,
          ),
          onTap: () {
            Navigator.pop(context);
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor:
                      Theme.of(context).colorScheme.primaryContainer,
                  title: Text(
                    "Are you an admin",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  actions: [
                    OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        context.push(
                          "/admin",
                        );
                      },
                      child: Text(
                        "Nope",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                    OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);

                        context.push(
                          "/admin?admin=safayet",
                        );
                      },
                      child: Text(
                        "Yes",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}
