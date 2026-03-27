import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      /// Null or State
      onPressed: () => debugPrint('Button Taped'),
      onLongPress: () => debugPrint('Long Pressed'),

      /// Call whenever focus state change
      onFocusChange: (isFocused) {
        if (isFocused) {
          debugPrint("Button is focused");
        } else {
          debugPrint("Button lost focus");
        }
      },

      /// When mouse pointer enters or exits the button region (desktop/web).
      onHover: (isHovering) =>
          debugPrint(isHovering ? 'Hovering' : 'Remove Hovering'),

      /// For keyboard focus control
      autofocus: true,
      focusNode: FocusNode(),

      /// Controls how content is clipped inside the button (e.g. Clip.antiAlias).
      clipBehavior: Clip.antiAlias,

      /// Styling
      style: ElevatedButton.styleFrom(
        // alignment: Alignment.center,
        backgroundColor: Colors.deepPurple.shade300,
        foregroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 15,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        side: BorderSide(width: 3, color: Colors.orangeAccent),

        /// Splash enable or disable
        // splashFactory: NoSplash.splashFactory
        /// Padding vertically and horizontally
        // visualDensity: VisualDensity(horizontal: 1.5, vertical: 2.5)
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
        ),

        /// Web / desktop

        /// When Enabled
        enabledMouseCursor: SystemMouseCursors.grab,

        /// When Disable
        disabledMouseCursor: SystemMouseCursors.forbidden,
      ),
      child: Text('ElevatedButton'),
    );
  }
}
