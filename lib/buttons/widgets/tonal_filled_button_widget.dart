import 'package:flutter/material.dart';

class TonalFilledButtonWidget extends StatelessWidget {
  const TonalFilledButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonalIcon(
      onPressed: () {},
      icon: Icon(Icons.edit),
      label: Text('Edit'),
      style: FilledButton.styleFrom(),
    );
  }
}
