import 'package:buttons/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';

class ButtonScreenThree extends StatelessWidget {
  const ButtonScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Button 3', style: TextStyles.kText30W400),
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
