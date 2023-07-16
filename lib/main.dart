import 'package:flutter/material.dart';
import 'package:todolist/presentation/ui/login_screen.dart';
import 'package:todolist/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar:  AppBar(
          centerTitle: true,
          title: const Text('ToDoList'),
        ),
        body: LoginScreen()),
      routes: mapRoute,

    );
  }
}

