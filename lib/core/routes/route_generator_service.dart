import 'package:flutter/material.dart';
import 'package:instagram_clone/modules/login/presentation/login_page.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //Login:
      case '/login':
        return MaterialPageRoute(builder: (context) => const LoginPage());
    }
  }
}
