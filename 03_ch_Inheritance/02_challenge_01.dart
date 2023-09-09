void main() {
  final fruit = Fruit('yellow');
  final melon = Melon('blue');
  final watermelon = WaterMelon('red and green');
  final cantaloupe = Cantaloupe('orange');

  fruit.describeColor();
  melon.describeColor();
  watermelon.describeColor();
  cantaloupe.describeColor();
}

class Fruit {
  final String color;

  Fruit(this.color);

  void describeColor() {
    print('$color value.');
  }
}

class Melon extends Fruit {
  Melon(super.color);
}

class WaterMelon extends Melon {
  WaterMelon(super.color);

  @override
  void describeColor() {
    print('$color is override');
  }
}

class Cantaloupe extends Melon {
  Cantaloupe(super.color);
}
