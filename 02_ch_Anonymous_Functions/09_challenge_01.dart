void main() {
  final animals = {
    'sheep': 99,
    'goat': 32,
    'snakes': 7,
    'lions': 80,
    'seals': 18
  };

  final values = [1, 2, 3, 4];
  final animalCount = animals.keys
      .where((element) => element.startsWith('s'))
      .fold(0, (sum, element) => sum + (animals[element] ?? 0));

  print(animalCount);
}
