import 'package:flutter/material.dart';
import 'package:pokedex_app/pokedex_card.dart';

void main() => runApp(const PokedexApp());

class PokedexApp extends StatelessWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
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
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: const Text(
            "←",
            style: TextStyle(
              fontFamily: 'PressStart2P',
              fontSize: 28,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        centerTitle: false, 
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 40, 16, 40),
          child: PokedexCard(name: "Pikachu", type: "Electric", dexNumber: "025", level: "16", species: "Mouse", hp: "56", attack: "55", defense: "40", specialAttack: "50", specialDefense: "50", resistance: "Water", weakness: "Rock", nextEvolution: "Raichu", imagePath: 'assets/img/pikachu.png')
        ),
      ),
    );
  }
}