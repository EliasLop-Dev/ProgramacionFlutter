import 'package:flutter/material.dart';
import '../screens/card_screen.dart';

class AppRoutes {
  static const initialRoute = '/';
  static final Map<String, WidgetBuilder> routes = {
    '/cards': (BuildContext context) => const CardScreen(),
  };
}
