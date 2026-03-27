import 'package:flutter/material.dart';

class ElevatedIconButtonWidget extends StatelessWidget {
  const ElevatedIconButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => debugPrint("Elevated button with icon"),
      label: Text('Elevated icon Button'),
      icon: Icon(Icons.ads_click),
      style: OutlinedButton.styleFrom(
        enabledMouseCursor: SystemMouseCursors.forbidden,
      ),
    );
  }
}
