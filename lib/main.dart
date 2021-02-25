import 'package:flutter/material.dart';
import 'package:web_scroll_to_section/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Scroll Example',
      theme: ThemeData(
          primarySwatch: Colors.blue, bottomAppBarColor: Colors.blueGrey[600]),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
