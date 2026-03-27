import 'package:flutter/material.dart';

class TextIconButtonWidget extends StatelessWidget {
  const TextIconButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      label: Text('Text icon Button'),
      icon: Icon(Icons.ads_click),
      style: OutlinedButton.styleFrom(
        enabledMouseCursor: SystemMouseCursors.allScroll, // text),
      ),
    );
  }
}
