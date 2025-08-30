import 'package:flutter/material.dart';

class Buttons2 extends StatelessWidget {
  const Buttons2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Floating Action Button
      floatingActionButton: FloatingActionButton(onPressed: (){}),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              /// IconButton
              IconButton(onPressed: (){}, icon: Icon(Icons.smart_button_outlined)),

              /// Raw Material Button
              RawMaterialButton(onPressed: (){}),

              /// PopUpMenuButton
              //PopupMenuButton(itemBuilder: itemBuilder)

              /// FilledButton
              FilledButton(onPressed: (){}, child: Text('FilledButton'))

              /// SegmentedButton
              //SegmentedButton(segments: segments, selected: selected)

            ],
          )),
    );
  }
}
