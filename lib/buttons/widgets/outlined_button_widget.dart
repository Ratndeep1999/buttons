import 'package:flutter/material.dart';
import '../../button_screens/button_screen_two.dart';

class OutlinedButtonWidget extends StatelessWidget {
  const OutlinedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => ButtonScreenTwo())),
      onLongPress: () => debugPrint('Long Pressed..!'),
      onHover: (isHover) => debugPrint(isHover ? 'Hover' : 'Hover Remover'),
      onFocusChange: (isFocused) =>
          debugPrint(isFocused ? 'Focused' : 'Unfocused'),

      focusNode: FocusNode(),
      autofocus: true,
      clipBehavior: Clip.antiAlias,
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(color: Colors.orangeAccent, width: 3),
        shape: RoundedRectangleBorder(),
        foregroundColor: Colors.deepOrange,
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
        enableFeedback: true,
        overlayColor: Colors.black,
        shadowColor: Colors.grey,
        elevation: 30.0,
        enabledMouseCursor: SystemMouseCursors.zoomIn,

        /// Background Blur Color
        surfaceTintColor: Colors.orange.shade700,

        /// Tappable area
        tapTargetSize: MaterialTapTargetSize.padded,
        // maximumSize: ,
        // minimumSize: ,
        // splashFactory: ,

        /// It gives Fixed size
        // fixedSize: Size.square(5.0),
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: 2.0,
        ),
      ),
      child: Text('Go to Second Screen'),
    );
  }
}
