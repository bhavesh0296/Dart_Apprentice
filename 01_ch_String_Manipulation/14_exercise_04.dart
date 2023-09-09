// Matching credit cart number must be 16 digits

void main() {
  const creditNumber = '1567898784562df3';
  final onlyNubers = RegExp(r'^[0-9]+$');
  final digit16Validation = RegExp(r'.{16,16}');

  if ((creditNumber.contains(onlyNubers)) &&
      creditNumber.contains(digit16Validation)) {
    print('this is perfect credit card number');
  } else {
    print('this is wrong credit cart number');
  }
}
