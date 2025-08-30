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
            fontWeight: FontWeight.w400,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                debugPrint('ElevatedButton');
              },
              autofocus: true,
              // in style we also use ButtonStyle()
              style: ElevatedButton.styleFrom(
                //alignment: Alignment.center,
                backgroundColor: Colors.deepPurple.shade300,
                foregroundColor: Colors.white,
                shadowColor: Colors.black,
                elevation: 15,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                side: BorderSide(width: 3, color: Colors.orangeAccent),
              ),
              child: Text('ElevatedButton'),
            ),
          ],
        ),
      ),
    );
  }
}
