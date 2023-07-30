import 'package:flutter/material.dart';

abstract class BaseView extends StatelessWidget {
  BaseView({
    Key? key,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return pageScaffold(context);
  }

  PreferredSizeWidget? appBar(BuildContext context);

  Widget body(BuildContext context);

  Widget pageScaffold(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBackgroundColor(context),
      key: globalKey,
      appBar: appBar(context),
      floatingActionButton: floatingActionButton(),
      body: pageContent(context),
      bottomNavigationBar: bottomNavigationBar(),
      drawer: drawer(),
    );
  }

  Widget pageContent(BuildContext context) {
    return SafeArea(
      child: body(context),
    );
  }

  Color pageBackgroundColor(BuildContext context) {
    return Theme.of(context).colorScheme.background;
  }

  Color statusBarColor(BuildContext context) {
    return Theme.of(context).colorScheme.primary;
  }

  Widget? floatingActionButton() {
    return null;
  }

  Widget? bottomNavigationBar() {
    return null;
  }

  Widget? drawer() {
    return null;
  }
}
