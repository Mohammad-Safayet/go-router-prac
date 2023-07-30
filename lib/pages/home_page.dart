import 'package:flutter/material.dart';

import 'package:go_router_prac/base/screen_base.dart';
import 'package:go_router_prac/widgets/app_bar.dart';
import 'package:go_router_prac/widgets/bottom_nav_bar.dart';

class HomeScreen extends BaseView {
  HomeScreen({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return const ApplicationBar(
      child: Text("go_router prac"),
    );
  }

  @override
  Widget body(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Center(
        child: Text(
          "Home",
          style: TextStyle(
            fontSize: 25.0,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ),
    );
  }

  @override
  Widget? bottomNavigationBar() {
    return const BottomNavBar();
  }
}
