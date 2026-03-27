import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        HapticFeedback.heavyImpact();
        debugPrint('Simple Liked..! Button');
      },
      onLongPress: () => debugPrint('Longe Pressed..!'),
      onHover: (isHover) => debugPrint(isHover ? 'Hovering' : 'Not Hovering'),

      /// Text Appear When Pointer Hover
      tooltip: 'Like',

      /// Color When onPressed state is null
      disabledColor: Colors.black45,
      mouseCursor: SystemMouseCursors.grabbing,

      /// On web/desktop it remove splash
      autofocus: false,
      focusNode: FocusNode(),

      /// This can easily increase or decrease radios of splash
      padding: EdgeInsets.all(5.0),
      enableFeedback: true,

      /// Appears when autofocus is true
      focusColor: Colors.blue,

      /// Appear for 1 second when user click
      highlightColor: Colors.green,

      /// Appear on web/desktop when mouse pointer hover on icon
      hoverColor: Colors.purple,
      iconSize: 40,
      icon: Icon(Icons.favorite, color: Colors.red),
    );
  }
}
