import 'dart:developer';

import 'package:flutter/material.dart';

class MainApplicationObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('$previousRoute pushed $route route');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('$previousRoute poped $route route');
  }
}
