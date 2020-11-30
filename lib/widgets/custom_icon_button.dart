import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final double radius;
  final IconData iconData;
  final VoidCallback onTap;
  CustomIconButton({this.radius, this.iconData, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child : Material(
        color: Colors.transparent,
        child : InkWell(
          child : Icon(iconData),
          onTap: onTap,
        ),
      ),
    );
  }
}