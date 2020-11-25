import 'package:flutter/material.dart';
import 'file:///C:/Users/Nikhil/AndroidStudioProjects/octo_assignment/lib/pages/homepage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      title: "Octo Assignment- Stocks App",
    );
  }
}
