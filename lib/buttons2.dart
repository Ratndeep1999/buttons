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

  // For toggle of thumb like button
  bool _thumbLiked = false;

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
              /// Icon Buttons Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // IconButton
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
                    // Appears when autofocus is true
                    focusColor: Colors.blue,
                    // Appear for 1 second when user click
                    highlightColor: Colors.green,
                    // Appear on web/desktop when mouse pointer hover on icon
                    hoverColor: Colors.purple,
                    iconSize: 40,
                    icon: Icon(Icons.favorite, color: Colors.red),
                  ),

                  // IconButton with border
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _thumbLiked = !_thumbLiked;
                      });
                    },
                    icon: Icon(Icons.thumb_up),
                    tooltip: _thumbLiked ? 'Liked' : 'Click',
                    color: _thumbLiked ? Colors.blue : Colors.black26,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    iconSize: 40,
                    style: IconButton.styleFrom(
                      side: BorderSide(color: Colors.black26, width: 3),
                      padding: EdgeInsets.all(16.0),
                      backgroundColor: _thumbLiked
                          ? Colors.purple.withOpacity(0.3)
                          : Colors.transparent,
                      // Here also same properties
                      // hoverColor: Colors.deepOrange
                    ),
                  ),

                  // ToolTip IconButton
                  IconButton(
                    onPressed: () {
                      // toggle
                      setState(() {
                        _isLiked = !(_isLiked);
                        debugPrint(_isLiked ? 'Clicked' : 'UnClicked');
                      });
                    },
                    icon: Icon(Icons.favorite_border),
                    // If isSelected is true then icon change to selectedIcon
                    isSelected: _isLiked,
                    // This icon appear when isSelected is true
                    selectedIcon: Icon(Icons.favorite, color: Colors.red),
                    // 'Like' appear when _isLiked is false
                    tooltip: _isLiked ? 'Liked' : 'Like',
                    iconSize: 40,
                  ),
                ],
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
