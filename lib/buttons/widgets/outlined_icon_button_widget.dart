import 'package:flutter/material.dart';

class OutlinedIconButtonWidget extends StatelessWidget {
  const OutlinedIconButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {},
      label: Text('Outlined icon Button'),
      icon: Icon(Icons.ads_click),
      style: OutlinedButton.styleFrom(
        enabledMouseCursor: SystemMouseCursors.text, // text),
      ),
    );
  }
}
