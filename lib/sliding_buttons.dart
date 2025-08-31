import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'buttons2.dart';

class SlidingButtons extends StatefulWidget {
  const SlidingButtons({super.key});

  @override
  State<SlidingButtons> createState() => _SlidingButtonsState();
}

class _SlidingButtonsState extends State<SlidingButtons> {
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Sliding Buttons',
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /// slider_button
              SliderButton(
                action: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Buttons2()),
                ),
                label: Text(
                  "Go To SecondScreen",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                icon: Icon(Icons.shopping_cart, color: Colors.red, size: 30,),
                backgroundColor: Colors.red,
                buttonColor: Colors.white,
                highlightedColor: Colors.black12,
              ),

              /// swipeable_button_view
              SwipeableButtonView(
                buttonText: "Go To SecondScreen",
                buttonWidget: Icon(Icons.arrow_forward, color: Colors.green),
                activeColor: Colors.green,
                isFinished: isFinished,
                onWaitingProcess: () {
                  Future.delayed(Duration(seconds: 2), () {
                    setState(() {
                      isFinished = true;
                    });
                  });
                },
                onFinish: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Buttons2()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
