import 'package:flutter/material.dart';

import 'package:go_router_prac/base/screen_base.dart';

class HomeScreen extends BaseView {
  HomeScreen({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: const Center(
        child: Text(
          "Home",
        ),
      ),
    );
  }
}
