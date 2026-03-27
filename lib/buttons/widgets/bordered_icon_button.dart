import 'package:flutter/material.dart';

class BorderedIconButton extends StatelessWidget {
  const BorderedIconButton({
    super.key,
    required this.onPressed,
    required this.thumbLiked,
  });

  final VoidCallback onPressed;
  final bool thumbLiked;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(Icons.thumb_up),
      tooltip: thumbLiked ? 'Liked' : 'Click',
      color: thumbLiked ? Colors.purple.shade500 : Colors.black26,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      iconSize: 40,
      style: IconButton.styleFrom(
        side: BorderSide(color: Colors.purple.shade300, width: 3),
        padding: EdgeInsets.all(16.0),
        backgroundColor: thumbLiked ? Color(0xffffa585) : Colors.transparent,
        // Here also same properties
        // hoverColor: Colors.deepOrange
      ),
    );
  }
}
