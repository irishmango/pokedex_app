class Pokemon {
  final String number;
  final String name;
  final String type;
  final int level;
  final String species;
  final String gender;
  final int hp;
  final int attack;
  final int defense;
  final int specialAttack;
  final int specialDefense;
  final List<String> resistance;
  final List<String> weakness;
  final String? nextEvolution;
  final String? evolutionRequirement;

  Pokemon({
    required this.number,
    required this.name,
    required this.type,
    required this.level,
    required this.species,
    required this.gender,
    required this.hp,
    required this.attack,
    required this.defense,
    required this.specialAttack,
    required this.specialDefense,
    required this.resistance,
    required this.weakness,
    this.nextEvolution,
    this.evolutionRequirement,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      number: json['number'],
      name: json['name'],
      type: json['type'],
      level: json['level'],
      species: json['species'],
      gender: json['gender'],
      hp: json['hp'],
      attack: json['attack'],
      defense: json['defense'],
      specialAttack: json['specialAttack'],
      specialDefense: json['specialDefense'],
      resistance: List<String>.from(json['resistance']),
      weakness: List<String>.from(json['weakness']),
      nextEvolution: json['nextEvolution'],
      evolutionRequirement: json['evolutionRequirement'],
    );
  }
  
  void format() {
    print(
        "Pokedex No.: $number\n"
        "Name: $name\n"
        "Type: $type\n"
        "Level: $level\n"
        "Species: $species\n"
        "Gender: $gender\n"
        "HP: $hp\n"
        "Attack: $attack\n"
        "Defense: $defense\n"
        "Special Attack: $specialAttack\n"
        "Special Defense: $specialDefense\n"
        "Resistance: ${resistance.join(', ')}\n"
        "Weakness: ${weakness.join(', ')}\n"
        "Next Evolution: ${nextEvolution ?? 'None'}\n"
        "Evolution Requirement: ${evolutionRequirement ?? 'N/A'}"
    );
  }
}