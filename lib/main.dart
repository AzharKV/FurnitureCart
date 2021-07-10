import 'package:cs_test/view/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CS Test',
      theme: ThemeData(primaryColor: Colors.white,scaffoldBackgroundColor: Colors.white),
      home: HomeScreen(),
    );
  }
}
