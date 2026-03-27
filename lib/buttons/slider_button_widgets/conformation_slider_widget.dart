import 'package:buttons/button_screens/button_screen_two.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class ConformationSliderWidget extends StatelessWidget {
  const ConformationSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ConfirmationSlider(
      text: "Slide to confirm",
      textStyle: TextStyle(color: Colors.white),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      backgroundColorEnd: Colors.red,
      iconColor: Colors.green,
      sliderButtonContent: Icon(Icons.arrow_right, color: Colors.green),
      stickToEnd: false,
      onConfirmation: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ButtonScreenTwo()),
      ),
    );
  }
}
