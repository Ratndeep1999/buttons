import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        /// Force vibration on press
        HapticFeedback.heavyImpact();
        debugPrint('Text Button Tap');
      },
      onLongPress: () => debugPrint('Long Press..!'),

      /// Callback when mouse enters or leaves the button area.
      onHover: (isHovering) =>
          debugPrint(isHovering ? "Hovering" : "Not Hovering"),

      /// Callback when the button gains or loses focus.
      onFocusChange: (isFocused) =>
          debugPrint(isFocused ? "Focused" : "Unfocused"),

      /// If true, button gets focus automatically on screen load.
      autofocus: true,

      /// For keyboard focus control
      focusNode: FocusNode(),

      /// Styling
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,

        /// It remover extra surface of button
        padding: EdgeInsets.all(0.0),

        /// It remover border radius
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),

        /// It also remove extra surface of button
        visualDensity: VisualDensity(vertical: 0.0, horizontal: 0.0),

        /// It gives radius (clickable) to the button
        // fixedSize: Size.fromRadius(50),

        /// Disable and Enable State mouse cursor
        disabledMouseCursor: SystemMouseCursors.forbidden,
        enabledMouseCursor: SystemMouseCursors.wait,

        /// like a click sound on web/desktop or haptic vibration on mobile
        enableFeedback: true,

        /// Blur Background Color when Hover
        overlayColor: Colors.green,

        /// Button Animation
        animationDuration: Duration(seconds: 5),

        /// Button Text Styling
        textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: Colors.black45,
        ),
      ),
      child: Text('Text Button'),
    );
  }
}
