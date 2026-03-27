import 'package:flutter/material.dart';

class CircularRawMaterialButtonWidget extends StatelessWidget {
  const CircularRawMaterialButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => debugPrint("Circular button..!"),
      mouseCursor: SystemMouseCursors.noDrop,
      fillColor: Colors.blue,
      splashColor: Colors.white,
      elevation: 8.0,
      shape: CircleBorder(),
      padding: EdgeInsets.all(20.0),
      child: Icon(Icons.thumb_up, color: Colors.white),
    );
  }
}
