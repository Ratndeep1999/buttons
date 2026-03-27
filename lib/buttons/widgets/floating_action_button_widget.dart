import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      /// (-left_right, -up_down)
      alignment: Alignment(0.7, 0.7),
      child: FloatingActionButton(
        onPressed: () => debugPrint('Floating Action Button Pressed..!'),
        elevation: 8.0,
        hoverElevation: 50.0,
        // focusElevation: ,
        highlightElevation: 16.0,
        autofocus: true,
        focusNode: FocusNode(),

        /// Display Name When Cursor Hover
        tooltip: 'Floating Action Button',
        // shape: ,
        hoverColor: Colors.purple,
        focusColor: Colors.blue,
        splashColor: Colors.white,
        backgroundColor: Color(0xff00ff87),

        /// Define Tappable area
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        enableFeedback: true,
        mouseCursor: SystemMouseCursors.none,
        clipBehavior: Clip.none,
        child: Icon(Icons.add, size: 35, color: Color(0xff0061ff)),
      ),
    );
  }
}
