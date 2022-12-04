import 'package:flutter/material.dart';
import 'package:todoapplication/page/homepage.dart';
import 'package:todoapplication/page/welcomepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage(),
    );  
  }
}
