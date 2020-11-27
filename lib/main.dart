import 'package:flutter/material.dart';
import 'package:flutter_universe/screens/home.dart';
import 'package:flutter_universe/screens/settings.dart';
import 'package:flutter_universe/screens/videos.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'videos',
      routes: {
        'home': (context) => Home(),
        'videos': (context) => Videos(),
        'settings': (context) => Settings(),
        'homepage': (context) => HomePage(),
      },            
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}