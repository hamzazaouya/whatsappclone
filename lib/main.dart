import 'package:flutter/material.dart';
import 'package:wathsapp_clone/page/homepage.dart';

void main() {
  runApp(const WhathsApp());
}

class WhathsApp extends StatelessWidget {
  const WhathsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

