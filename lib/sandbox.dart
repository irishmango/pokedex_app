import 'package:flutter/material.dart';


class PixelFrame extends StatelessWidget {
  final Widget child;
  final Color borderColor;
  final Color shadowColor;
  final double thickness;
  final double offset;

  const PixelFrame({
    super.key,
    required this.child,
    this.borderColor = Colors.white,
    this.shadowColor = Colors.black,
    this.thickness = 4.0,
    this.offset = 4.0,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Top border
        Positioned(
          top: 0,
          left: offset,
          right: offset,
          child: Container(
            height: thickness,
            color: borderColor,
          ),
        ),
        // Bottom border
        Positioned(
          bottom: 0,
          left: offset,
          right: offset,
          child: Container(
            height: thickness,
            color: borderColor,
          ),
        ),
        // Left border
        Positioned(
          top: offset,
          bottom: offset,
          left: 0,
          child: Container(
            width: thickness,
            color: borderColor,
          ),
        ),
        // Right border
        Positioned(
          top: offset,
          bottom: offset,
          right: 0,
          child: Container(
            width: thickness,
            color: borderColor,
          ),
        ),
        // Right shadow
        Positioned(
          top: offset,
          bottom: offset,
          right: 4,
          child: Container(
            width: thickness,
            color: shadowColor,
          ),
        ),
        // Content
        Positioned.fill(
          child: Padding(
            padding: EdgeInsets.all(thickness),
            child: child,
          ),
        ),
      ],
    );
  }
}