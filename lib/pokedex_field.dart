import 'package:flutter/material.dart';

class PokedexField extends StatelessWidget {
  final Widget child;
  final Color borderColor;
  final double thickness;
  final double offset;
  final double? width;
  final double? height;

  const PokedexField({
    super.key,
    required this.child,
    this.borderColor = Colors.white,
    this.thickness = 2.5,
    this.offset = 2.0,
    this.width = 150,
    this.height = 30,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
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
          // Content
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.all(thickness),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}