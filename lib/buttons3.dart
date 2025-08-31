import 'package:flutter/material.dart';

class Buttons3 extends StatelessWidget {
  const Buttons3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Button 3',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
            letterSpacing: 5,
          ),
        ),
        elevation: 8.0,
        titleSpacing: 2.5,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              /// PopUpMenuButton
              //PopupMenuButton(itemBuilder: itemBuilder)

              /// SegmentedButton
              //SegmentedButton(segments: segments, selected: selected)
            ],
          ),
        ),
      ),
    );
  }
}
