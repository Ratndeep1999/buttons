import 'package:buttons/sliding_buttons.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SlideToActButtonWidget extends StatelessWidget {
  const SlideToActButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SlideAction(
        text: "Go To Sliding Buttons Screen",
        textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        outerColor: Colors.green,
        innerColor: Colors.white,
        elevation: 4,
        sliderButtonIcon: Icon(
          Icons.lock_open,
          // Icons.shopping_cart,
          color: Colors.green,
        ),

        /// After Swipe To End
        onSubmit: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SlidingButtons()),
          );
          return null;
        },
      ),
    );
  }
}
