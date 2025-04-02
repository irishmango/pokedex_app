import 'package:flutter/material.dart';
import 'package:pokedex_app/pixel_frame.dart';
import 'package:pokedex_app/pokedex_field.dart';
import 'package:pokedex_app/pokedex_label_field.dart';

class PokedexCard extends StatelessWidget {
  final String name;
  final String type;
  final String dexNumber;
  final String level;
  final String imagePath;
  final double imageHeight;
  final BoxFit imageFit;

  const PokedexCard({
    super.key,
    required this.name,
    required this.type,
    required this.dexNumber,
    required this.level,
    required this.imagePath,
    this.imageHeight = 150,
    this.imageFit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return PixelFrame(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PokedexField(
                  width: imageHeight,
                  height: imageHeight,
                  child: Image.asset(
                    imagePath,
                    height: imageHeight,
                    fit: imageFit,
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PokedexLabelField(
                      label: 'Pokémon',
                      value: name,
                      fieldWidth: 164,
                    ),
                    const SizedBox(height: 30),
                    PokedexLabelField(
                      label: 'Type',
                      value: type,
                      fieldWidth: 164,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PokedexLabelField(
                  label: 'Dex No.',
                  value: dexNumber,
                  fieldWidth: 150,
                ),
                PokedexLabelField(
                  label: 'Level',
                  value: level,
                  fieldWidth: 150,
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PokedexLabelField(
                  label: 'Species',
                  value: dexNumber,
                  fieldWidth: 150,
                ),
                PokedexLabelField(
                  label: 'Gender',
                  value: level,
                  fieldWidth: 150,
                ),
              ],
            ),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PokedexLabelField(
                  label: 'HP',
                  value: dexNumber,
                  fieldWidth: 100,
                ),
                PokedexLabelField(
                  label: 'Attack',
                  value: level,
                  fieldWidth: 100,
                ),
                PokedexLabelField(
                  label: 'Defense',
                  value: level,
                  fieldWidth: 100,
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PokedexLabelField(
                  label: 'Special\nAttack',
                  value: dexNumber,
                  fieldWidth: 150,
                ),
                PokedexLabelField(
                  label: 'Special\nDefense',
                  value: level,
                  fieldWidth: 150,
                ),
              ],
            ),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PokedexLabelField(
                  label: 'Resistance',
                  value: dexNumber,
                  fieldWidth: 150,
                ),
                PokedexLabelField(
                  label: 'Weakness',
                  value: level,
                  fieldWidth: 150,
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: PokedexLabelField(
                    label: 'Next Evolution',
                    value: dexNumber,
                    fieldWidth: 150,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '→',
                        style: TextStyle(
                          fontFamily: 'PressStart2P',
                          fontSize: 12,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: PokedexLabelField(
                    label: '',
                    value: level,
                    fieldWidth: 150,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}