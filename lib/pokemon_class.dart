class Pokemon {
  final String number;
  final String name;
  final int hp;
  final int attack;
  final int defense;
  final int specialAttack;
  final int specialDefense;
  final int speed;

  Pokemon({required this.number, required this.name, required this.hp, required this.attack, required this.defense, required this.specialAttack, required this.specialDefense, required this.speed});

  void format() {
    print(
        "Pokedex No.: $number \nName: $name \nHP: $hp \nAttack: $attack \nDefense: $defense \nSpecial Attack: $specialAttack \nSpecial Defense: $specialDefense \nSpeed: $speed");
  }
}


