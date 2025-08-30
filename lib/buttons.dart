import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Buttons',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
            letterSpacing: 5,
          ),
        ),
        backgroundColor: Colors.tealAccent.shade100,
        elevation: 2.0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              /// ElevatedButton
              buildElevatedButton(),

              /// Elevated with icon
              ElevatedButton.icon(
                onPressed: () {},
                label: Text('Elevated icon Button'),
                icon: Icon(Icons.ads_click),
              ),

              /// TextButton
              buildTextButton(),

              /// textButton with Icon
              TextButton.icon(
                onPressed: () {},
                label: Text('Text icon Button'),
                icon: Icon(Icons.ads_click),
              ),

              /// OutlinedButton
              OutlinedButton(
                  onPressed: (){
                    debugPrint('OutlinedButton');
                  },
                  onLongPress: (){
                    debugPrint('Long Pressed..!');
                  },
                  onHover: (isHover){
                    debugPrint(isHover ? 'Hover' : 'Hover Remover');
                  },
                  onFocusChange: (isFocused){
                    debugPrint(isFocused ? 'Focused' : 'Unfocused');
                  },
                  child: Text('OutlinedButton')
              ),

              /// Outlined with icon
              OutlinedButton.icon(
                onPressed: (){},
                label: Text('Outlined icon Button'),
                icon: Icon(Icons.ads_click),
              )
            ],
          ),
        ),
      ),
    );
  }

  TextButton buildTextButton() {
    return TextButton(
      // 1. Callback when tap on button
      onPressed: () {
        HapticFeedback.heavyImpact(); // force vibration on press
        debugPrint('TextButton');
      },
      // 2. Callback when longPressed on button
      onLongPress: () {
        debugPrint('Long Press..!');
      },
      // 3. Callback when mouse enters or leaves the button area (desktop/web).
      onHover: (isHovering) {
        debugPrint(isHovering ? "Hovering" : "Not Hovering");
      },
      // 4. Callback when the button gains or loses focus.
      onFocusChange: (isFocused) {
        debugPrint(isFocused ? "Focused" : "Unfocused");
      },
      // For keyboard focus control
      focusNode: FocusNode(),
      // If true, button gets focus automatically on screen load.
      autofocus: true,
      // Style of text button
      style: TextButton.styleFrom(
        // It remover background color
        backgroundColor: Colors.transparent,
        // It remover extra surface of button
        padding: EdgeInsets.all(0.0),
        // It remover border radius
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
        // It also remove extra surface of button
        visualDensity: VisualDensity(vertical: 0.0, horizontal: 0.0),
        // It gives radius (clickable) to the button
        //fixedSize: Size.fromRadius(50),
        disabledMouseCursor: SystemMouseCursors.forbidden,
        // 🚫 cursor
        enabledMouseCursor: SystemMouseCursors.progress,
        // like a click sound on web/desktop or haptic vibration on mobile
        enableFeedback: true,
        // ❌ no haptic / click sound
        // controls the color that appears on a button when it is interacted
        overlayColor: Colors.redAccent,
        // If you want slower/smoother animations for hover/focus effects on desktop/web.
        animationDuration: Duration(seconds: 5),
        textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: Colors.black45,
        ),
      ),
      child: Text('Text Button'),
    );
  }

  ElevatedButton buildElevatedButton() {
    return ElevatedButton(
      // 1. Callback when tap on button
      onPressed: () {
        debugPrint('ElevatedButton');
        // null : disable state
      },
      // 2. Callback when longPressed on button
      onLongPress: () {
        debugPrint('Long Pressed');
      },
      // 3. Call whenever focus state change
      onFocusChange: (isFocused) {
        if (isFocused) {
          debugPrint("Button is focused!");
        } else {
          debugPrint("Button lost focus!");
        }
      },
      // 4. Called when the mouse pointer enters or exits the button region (desktop/web).
      onHover: (isHovering) {
        debugPrint(isHovering ? 'Hovering' : 'Remove Hovering');
      },
      // If true, button gets focus automatically when screen loads.
      autofocus: true,
      // for keyboard focus control
      focusNode: FocusNode(),
      // Controls how content is clipped inside the button (e.g. Clip.antiAlias).
      clipBehavior: Clip.antiAlias,
      // in style we also use ButtonStyle()
      style: ElevatedButton.styleFrom(
        //alignment: Alignment.center,
        backgroundColor: Colors.deepPurple.shade300,
        foregroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 15,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        side: BorderSide(width: 3, color: Colors.orangeAccent),
        // splash enable or disable
        // splashFactory: NoSplash.splashFactory
        // this is basically padding vertically and horizontally
        // visualDensity: VisualDensity(horizontal: 1.5, vertical: 2.5)
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
        ),
        // only for web/desktop
        enabledMouseCursor: SystemMouseCursors.grab,
        // when enabled
        disabledMouseCursor: SystemMouseCursors.forbidden, // when disabled
      ),
      child: Text('ElevatedButton'),
    );
  }
}
