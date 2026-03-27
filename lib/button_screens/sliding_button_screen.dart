import 'package:buttons/buttons/slider_button_widgets/conformation_slider_widget.dart';
import 'package:buttons/buttons/slider_button_widgets/slider_button_widget.dart';
import 'package:buttons/buttons/slider_button_widgets/swipeable_button_view_widget.dart';
import 'package:buttons/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';

class SlidingButtonScreen extends StatelessWidget {
  const SlidingButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Appbar
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Sliding Buttons', style: TextStyles.kText30W400),
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
              SliderButtonWidget(),

              /// Best for On boarding Screen : swipeable_button_view
              SwipeableButtonViewWidget(),

              /// For Onboarding screen : slide_to_confirm
              ConformationSliderWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
