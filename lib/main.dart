import 'package:flutter/material.dart';
import 'package:octo_assignment/pages/landingpage.dart';
import 'pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
      title: "Octo Assignment- Stocks App",
      debugShowCheckedModeBanner: false,
    );
  }
}
