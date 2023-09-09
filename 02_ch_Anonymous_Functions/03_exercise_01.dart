void main() {
  final scroes = [89, 77, 46, 93, 82, 67, 32, 88];
  scroes.sort();
  print(scroes);

  final bScores = scroes.where((element) => element > 80 && element < 90);
  print(bScores);
}
