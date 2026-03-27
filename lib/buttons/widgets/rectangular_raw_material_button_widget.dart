import 'package:flutter/material.dart';

class RectangularRawMaterialButton extends StatelessWidget {
  const RectangularRawMaterialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => debugPrint('RawMaterial Button..!'),
      fillColor: Colors.blue,
      elevation: 10.0,

      /// Elevation On Button Hovers
      hoverElevation: 20.0,

      /// Focused Elevation
      focusElevation: 25.0,

      /// Elevation When Pressed
      highlightElevation: 8.0,

      /// Elevation When Disabled
      disabledElevation: 0.0,

      /// Ripple Effect
      splashColor: Colors.red,

      /// When Pressed
      highlightColor: Colors.green,

      /// Hover (desktop/web)
      hoverColor: Colors.orange,

      /// When Focused
      focusColor: Colors.purple,

      /// Inside Padding
      padding: EdgeInsets.all(16.0),

      /// Defines Cursor style on Hover (desktop/web).
      mouseCursor: SystemMouseCursors.progress,
      focusNode: FocusNode(),
      autofocus: true,

      /// How big the tappable (hit-test) area of a button
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

      /// Duration of shape/color/elevation animations
      animationDuration: Duration(milliseconds: 800),
      child: Text('RawMaterialButton', style: TextStyle(fontSize: 16.0)),
    );
  }
}
