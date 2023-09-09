void main() {
  const numbers = [1, 2, 3];
  numbers.forEach((int element) {
    print(3 * element);
  });

  numbers.forEach((element) => print(3 * element));

  for (final number in numbers) {
    print(4 * number);
  }

  final squareFuncation = (int value) => print(value * 2);
  numbers.forEach(squareFuncation);

  final flowerColor = {
    'roses': 'red',
    'violets': 'blue',
  };

  // MAP FUNCTION
  flowerColor.forEach((flower, color) {
    print('$flower are $color');
  });

  const array = [2, 4, 6, 8, 10, 12];
  final looped = <int>[];
  for (final x in array) {
    looped.add(x * x);
  }
  print(looped);

  final mapped = array.map((x) => x * x);
  print(mapped);

  print(mapped.toList());

  // FILTER  (WHERE) Function
  final myList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  final odds = myList.where((element) => element.isOdd);
  print(odds);
  print(odds.toList());

  // REDUCE Function
  const even = [2, 4, 6, 8, 10, 12, 14, 16];
  final total = even.reduce((sum, element) => sum + element);
  final total2 = even.reduce((sum, element) {
    return sum + element;
  });

  print(total);
  print(total2);

  // FOLD Function -> used when list can be empty, into that case reduce function gives error
  final total3 = even.fold(0, (sum, element) => sum + element);
  print(total3);

  // SORT Function
  final desserts = ['cookies', 'pie', 'donuts', 'brownies'];
  desserts.sort();
  print(desserts);

  desserts.sort((d1, d2) => d1.length.compareTo(d2.length));
  print(desserts);

  // Combining High Order Functions
  final bigTallSDesers = desserts
      .where((dessert) => dessert.length > 5)
      .map((dessert) => dessert.toUpperCase())
      .toList();
  print(bigTallSDesers);
}
