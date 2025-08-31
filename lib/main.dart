import 'package:buttons/sliding_buttons.dart';
import 'package:flutter/material.dart';
import 'buttons.dart';
import 'buttons2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Buttons(),
    );
  }
}