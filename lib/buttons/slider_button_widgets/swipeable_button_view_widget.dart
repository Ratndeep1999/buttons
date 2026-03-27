import 'package:buttons/button_screens/button_screen_two.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class SwipeableButtonViewWidget extends StatefulWidget {
  const SwipeableButtonViewWidget({super.key});

  @override
  State<SwipeableButtonViewWidget> createState() =>
      _SwipeableButtonViewWidgetState();
}

class _SwipeableButtonViewWidgetState extends State<SwipeableButtonViewWidget> {
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return SwipeableButtonView(
      buttonText: "Go To SecondScreen",
      buttonWidget: Icon(Icons.arrow_forward, color: Colors.purple),
      activeColor: Colors.purple,
      isFinished: isFinished,
      onWaitingProcess: () => Future.delayed(
        Duration(seconds: 2),
        () => setState(() => isFinished = true),
      ),
      onFinish: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ButtonScreenTwo()),
        );
      },
    );
  }
}
