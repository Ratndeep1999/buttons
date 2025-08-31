import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                  HapticFeedback.heavyImpact(); // force vibrato on press
                  debugPrint('Liked..!');
                },
                onLongPress: (){
                  debugPrint('Longe Pressed..!');
                },
                onHover: (isHover){
                  debugPrint(isHover ? 'Hovering' : 'Not Hovering');
                },
                // when pointer appear on button text appear
                tooltip: 'Like',
                // Color when onPressed is null
                disabledColor: Colors.black45,
                // On web/desktop it remove splash
                autofocus: false,
                focusNode: FocusNode(),
                // This can easily increase or decrease radios of splash
                padding: EdgeInsets.all(5.0),
                enableFeedback: true,
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
