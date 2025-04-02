import 'package:flutter/material.dart';
import 'package:pokedex_app/pokedex_field.dart'; 

class PokedexLabelField extends StatelessWidget {
  final String label;
  final String value;
  final double fieldWidth;
  final double fieldHeight;

  const PokedexLabelField({
    super.key,
    required this.label,
    required this.value,
    this.fieldWidth = 120,
    this.fieldHeight = 28,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
          label,
          style: const TextStyle(
            fontFamily: 'PressStart2P',
            fontSize: 12,
            color: Color(0xFFFFE545),
          ),
        ),
        const SizedBox(height: 4),
        PokedexField(
          width: fieldWidth,
          height: fieldHeight,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                value,
                style: const TextStyle(
                  fontFamily: 'PressStart2P',
                  fontSize: 8,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}