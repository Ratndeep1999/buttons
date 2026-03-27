import 'package:buttons/button_screens/button_screen_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFilledButtonWidget extends StatelessWidget {
  const CustomFilledButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        HapticFeedback.heavyImpact();
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => ButtonScreenThree()));
      },
      onLongPress: () {
        HapticFeedback.heavyImpact();
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => ButtonScreenThree()));
      },
      onHover: (isHover) => debugPrint(isHover ? 'Hovering' : 'Not Hovering'),
      onFocusChange: (isFocused) =>
          debugPrint(isFocused ? 'Focusing' : 'Un Focusing'),
      autofocus: true,
      focusNode: FocusNode(),
      clipBehavior: Clip.none,
      style: FilledButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 8.0),
        backgroundColor: Color(0xffe9b7ce),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
      ),
      child: Text('Next', style: TextStyle(fontSize: 22, letterSpacing: 5.0)),
    );
  }
}
