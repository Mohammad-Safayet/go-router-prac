import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:go_router_prac/base/screen_base.dart';
import 'package:go_router_prac/widgets/app_bar.dart';
import 'package:go_router_prac/widgets/bottom_nav_bar.dart';

class HomeScreen extends BaseView {
  HomeScreen({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return const ApplicationBar(
      child: Text("go_router prac"),
    );
  }

  @override
  Widget body(BuildContext context) {
    return navigationShell;
  }

  @override
  Widget? bottomNavigationBar() {
    return BottomNavBar(
      navigationShell: navigationShell,
    );
  }
}
