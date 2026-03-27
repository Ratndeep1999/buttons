import 'package:buttons/button_screens/button_screen_two.dart';
import 'package:buttons/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class SliderButtonWidget extends StatelessWidget {
  const SliderButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliderButton(
      /// Action at End of Swipe
      action: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ButtonScreenTwo()),
      ),
      label: Text(
        "Go To SecondScreen",
        style: TextStyles.kText30W400.copyWith(fontSize: 18),
      ),
      icon: Icon(Icons.shopping_cart, color: Colors.red, size: 30),
      backgroundColor: Colors.red,
      buttonColor: Colors.white,
      highlightedColor: Colors.black12,
    );
  }
}
