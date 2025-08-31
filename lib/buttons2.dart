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
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Button 2',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
            letterSpacing: 5,
          ),
        ),
        elevation: 8.0,
        titleSpacing: 2.5,
        centerTitle: true,
      ),

      /// Floating Action Button
      floatingActionButton: FloatingActionButton(onPressed: () {}),

      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              /// Icon Buttons Section
              Column(
                children: [
                  Text('Icon Button\'s', style: TextStyle(fontSize: 20)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
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
                        color: _thumbLiked
                            ? Colors.purple.shade500
                            : Colors.black26,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        iconSize: 40,
                        style: IconButton.styleFrom(
                          side: BorderSide(
                            color: Colors.purple.shade300,
                            width: 3,
                          ),
                          padding: EdgeInsets.all(16.0),
                          backgroundColor: _thumbLiked
                              ? Colors.purple.withOpacity(0.2)
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
                ],
              ),

              /// Raw Material Buttons Section
              Column(
                children: [
                  Text(
                    'Raw Material Button\'s',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                  // Rectangular raw material button
                  RawMaterialButton(
                    onPressed: () {
                      debugPrint('RawMaterial Button..!');
                    },
                    fillColor: Colors.blue,
                    // normal state
                    elevation: 10.0,
                    // when mouse hovers
                    hoverElevation: 6.0,
                    // when focused
                    focusElevation: 6.0,
                    // when pressed
                    highlightElevation: 8.0,
                    // when disabled
                    disabledElevation: 0.0,
                    // ripple effect
                    splashColor: Colors.red,
                    // when pressed
                    highlightColor: Colors.green,
                    // hover (desktop/web)
                    hoverColor: Colors.orange,
                    // when focused
                    focusColor: Colors.purple,
                    // Inside padding
                    padding: EdgeInsets.all(16.0),
                    // Defines cursor style on hover (desktop/web).
                    mouseCursor: SystemMouseCursors.progress,
                    // For keyboard navigation & accessibility
                    focusNode: FocusNode(),
                    autofocus: true,
                    // How big the tappable (hit-test) area of a button
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    // Duration of shape/color/elevation animations
                    animationDuration: Duration(milliseconds: 800),
                    child: Text(
                      'RawMaterialButton',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                  // Raw material button with icon
                  RawMaterialButton(
                    onPressed: () {
                      debugPrint("Circular button..!");
                    },
                    mouseCursor: SystemMouseCursors.noDrop,
                    fillColor: Colors.blue,
                    splashColor: Colors.white,
                    elevation: 8.0,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20.0),
                    child: Icon(Icons.thumb_up, color: Colors.white),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                  // Circular rectangular borders
                  RawMaterialButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(16.0),
                    fillColor: Colors.red,
                    elevation: 0.0,
                    hoverElevation: 8.0,
                    highlightElevation: 16.0,
                    hoverColor: Colors.green,
                    highlightColor: Colors.yellow,
                    // Button Shape
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('RawMaterialButton'),
                  ),
                ],
              ),

              /// FilledButton
              Column(
                children: [
                  Text('Filled Button\'s', style: TextStyle(fontSize: 20)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),

                  FilledButton(onPressed: () {}, child: Text('FilledButton')),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),

                  // FilledButton with tonalIcon
                  FilledButton.tonalIcon(
                    onPressed: () {},
                    icon: Icon(Icons.edit),
                    label: Text('Edit'),
                    style: FilledButton.styleFrom(),
                  ),

                  // Customized FilledButton
                  FilledButton(onPressed: () {}, child: Text('Next')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
