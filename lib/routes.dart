import 'package:flutter/material.dart';

import 'package:taller/login.dart';
import 'package:taller/register.dart';
import 'package:taller/home.dart';
import 'package:taller/description.dart';
import 'package:taller/updateUser.dart';
import 'package:taller/updatePassword.dart';
import 'package:taller/descriptionApi.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/description/id':
        return MaterialPageRoute(builder: (_) => DescriptionPage());
      case '/update/id':
        return MaterialPageRoute(builder: (_) => UpdateUser());
      case '/updatePassword/id':
        return MaterialPageRoute(builder: (_) => UpdatePassword());
      case '/description':
        final args = setting.arguments;
        return MaterialPageRoute(builder: (_) => MyApp(args.toString()));
    }
  }
}
