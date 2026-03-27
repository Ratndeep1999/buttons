import 'package:flutter/material.dart';

class CircularRawMaterialButtonWidget extends StatelessWidget {
  const CircularRawMaterialButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      padding: EdgeInsets.all(16.0),
      fillColor: Colors.red,
      elevation: 0.0,
      hoverElevation: 8.0,
      highlightElevation: 16.0,
      hoverColor: Colors.green,
      highlightColor: Colors.yellow,
      // Button Shape
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Text(' Circular RawMaterial Button'),
    );
  }
}
