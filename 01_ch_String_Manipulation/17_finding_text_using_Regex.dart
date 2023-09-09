void main() {
  const text = '''
  <h1>Dart Tutorial</h1>
  <h1>Flutter Tutorial</h1>
  <h1>Other Tutorial</h1>
''';

  final headings = RegExp(r'<h1>(.+)</h1>');
  final matchs = headings.allMatches(text);
  for (final match in matchs) {
    print(match.group(1));
  }
}
