void main() {
  const text = '''
  <h1>Dart Tutorial</h1>
  <h1>Flutter Tutorial</h1>
  <h1>Other Tutorial</h1>
''';

  var position = 0;
  while (true) {
    var start = text.indexOf('<h1>', position) + '<h1>'.length;
    var end = text.indexOf('</h1>', position);
    if (start == -1 || end == -1) {
      break;
    }

    final heading = text.substring(start, end);
    print(heading);
    position = end + '</h1>'.length;
  }
}
