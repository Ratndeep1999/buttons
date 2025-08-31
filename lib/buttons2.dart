import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Buttons2 extends StatefulWidget {
  const Buttons2({super.key});

  @override
  State<Buttons2> createState() => _Buttons2State();
}

class _Buttons2State extends State<Buttons2> {
  // For toggle Icon button
  bool _isLiked = false;

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
                onLongPress: () {
                  debugPrint('Longe Pressed..!');
                },
                onHover: (isHover) {
                  debugPrint(isHover ? 'Hovering' : 'Not Hovering');
                },
                // when pointer appear on button text appear
                tooltip: 'Like',
                // Color when onPressed is null
                disabledColor: Colors.black45,
                mouseCursor: SystemMouseCursors.grabbing,
                // On web/desktop it remove splash
                autofocus: false,
                focusNode: FocusNode(),
                // This can easily increase or decrease radios of splash
                padding: EdgeInsets.all(5.0),
                enableFeedback: true,
                icon: Icon(Icons.favorite, color: Colors.red, size: 40),
              ),

              /// ToolTip IconButton
              IconButton(
                onPressed: () {
                  // toggle 
                  setState(() {
                    _isLiked = !(_isLiked);
                    debugPrint(_isLiked ? 'Clicked' : 'UnClicked');
                  });
                },
                icon: Icon(Icons.favorite_border, size: 40,),
                // If isSelected is true then icon change to selectedIcon
                isSelected: _isLiked,
                // This icon appear when isSelected is true
                selectedIcon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 40,
                ),
                // 'Like' appear when _isLiked is false
                tooltip: _isLiked ? 'Liked' : 'Like'
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
