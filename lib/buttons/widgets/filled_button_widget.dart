import 'package:flutter/material.dart';

class FilledButtonWidget extends StatelessWidget {
  const FilledButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(onPressed: () {}, child: Text('FilledButton'));
  }
}
