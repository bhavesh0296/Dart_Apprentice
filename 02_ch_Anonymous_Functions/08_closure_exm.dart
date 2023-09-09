void main() {
  var counter = 0;
  final incrementCounter = () {
    counter += 1;
  };

  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  print(counter);

  final counter1 = countingFunction();
  final counter2 = countingFunction();

  print(counter1());
  print(counter2());
  print(counter1());
  print(counter2());
  print(counter1());
  print(counter2());
  print(counter1());
  print(counter2());
  print(counter1());
  print(counter2());
}

Function countingFunction() {
  var counter = 0;
  final incrementCounter = () {
    counter += 1;
    return counter;
  };
  return incrementCounter;
}
