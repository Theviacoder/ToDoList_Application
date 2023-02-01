import 'package:flutter/material.dart';
import 'page/HomePage/HomePage_view.dart';

import '../constants/ColorUtility.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final BgColor = tdwhite;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: BgColor,
        appBarTheme: AppBarTheme(color: BgColor, elevation: 0),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage(),
    );
  }
}
