import './pages/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color.fromRGBO(10, 14, 13, 1),
        scaffoldBackgroundColor: Color.fromRGBO(10, 14, 13, 1),
      ),
      routes: {
        "/": (context) => InputPage(),
      },
    );
  }
}
