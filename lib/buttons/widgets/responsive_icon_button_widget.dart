import 'package:flutter/material.dart';

class ResponsiveIconButtonWidget extends StatelessWidget {
  const ResponsiveIconButtonWidget({
    super.key,
    required this.onPressed,
    required this.isLiked,
  });

  final VoidCallback onPressed;
  final bool isLiked;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(Icons.favorite_border),

      /// If isSelected is true then icon change to selectedIcon
      isSelected: isLiked,

      /// This icon appear when isSelected is true
      selectedIcon: Icon(Icons.favorite, color: Colors.red),

      /// 'Like' appear when isLiked is false
      tooltip: isLiked ? 'Liked' : 'Like',
      iconSize: 40,

      /// Restrict Tappable area
      style: IconButton.styleFrom(tapTargetSize: MaterialTapTargetSize.padded),
    );
  }
}
