import 'package:flutter/material.dart';
import 'package:movies_app/core/services/services_locator.dart';
import 'package:movies_app/movie/presentation/screens/movies_screen.dart';

void main() {
  ServicesLocator().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainMoviesScreen(),
    );
  }
}
