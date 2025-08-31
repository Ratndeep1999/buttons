import 'package:flutter/material.dart';

class Buttons2 extends StatelessWidget {
  const Buttons2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Floating Action Button
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              /// IconButton
              IconButton(
                onPressed: () {
                  debugPrint('Liked..!');
                },
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 40,
                ),
              ),

              /// Raw Material Button
              RawMaterialButton(onPressed: () {}),

              /// PopUpMenuButton
              //PopupMenuButton(itemBuilder: itemBuilder)

              /// FilledButton
              FilledButton(onPressed: () {}, child: Text('FilledButton')),

              /// SegmentedButton
              //SegmentedButton(segments: segments, selected: selected)
            ],
          ),
        ),
      ),
    );
  }
}
