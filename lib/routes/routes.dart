import 'package:flutter/material.dart';
import 'package:todolist/presentation/ui/login_screen.dart';
import 'package:todolist/presentation/ui/register_screen.dart';

final Map<String, WidgetBuilder> mapRoute = {
  LoginScreen.routeName: (context) => LoginScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
};
