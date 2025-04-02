import 'package:flutter/material.dart';
import 'package:pokedex_app/pokedex_card.dart';

void main() => runApp(const PokedexApp());

class PokedexApp extends StatelessWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      debugShowCheckedModeBanner: false,
      home: const PokedexScreen(),
    );
  }
}

class PokedexScreen extends StatelessWidget {
  const PokedexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF002A66),
      appBar: AppBar(
        backgroundColor: const Color(0xFF002A66),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop(); 
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 40),
          child: PokedexCard(
            name: "Pikachu",
            type: "Electric",
            dexNumber: "19",
            level: "25",
            imagePath: 'assets/img/pikachu.png',
          ),
        ),
      ),
    );
  }
}