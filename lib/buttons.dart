import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Buttons',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            letterSpacing: 5,
          ),
        ),
        backgroundColor: Colors.tealAccent.shade100,
        elevation: 2.0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('ElevatedButton')),
          ],
        ),
      ),
    );
  }
}
