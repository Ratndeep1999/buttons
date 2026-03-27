import 'package:buttons/buttons/widgets/elevated_icon_button_widget.dart';
import 'package:buttons/buttons/widgets/outlined_button_widget.dart';
import 'package:buttons/buttons/widgets/outlined_icon_button_widget.dart';
import 'package:buttons/buttons/widgets/slide_to_act_button_widget.dart';
import 'package:buttons/buttons/widgets/text_button_widget.dart';
import 'package:buttons/buttons/widgets/text_icon_button_widget.dart';
import 'package:buttons/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';
import '../buttons/widgets/elevated_button_widget.dart';

class ButtonScreenOne extends StatelessWidget {
  const ButtonScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar()
      appBar: AppBar(
        title: Text('Buttons', style: TextStyles.kText30W400),
        backgroundColor: Colors.tealAccent.shade100,
        elevation: 2.0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              /// Elevated Button Widget
              ElevatedButtonWidget(),

              /// Elevated Button With Icon Widget
              ElevatedIconButtonWidget(),

              /// Text Button Widget
              TextButtonWidget(),

              /// textButton with Icon
              TextIconButtonWidget(),

              /// OutlinedButton
              OutlinedButtonWidget(),

              /// Outlined with icon
              OutlinedIconButtonWidget(),

              /// Swipe Button using Package slide_to_act: ^2.0.2
              SlideToActButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
