void main() {
  const multilineString = "France USA Germany Benin China Mexico Mongolia";
  final newLineSting = multilineString.replaceAll(' ', '\n');
  print(newLineSting);
}
