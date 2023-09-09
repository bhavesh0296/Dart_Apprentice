void main() {
  const htmlText = '''
  <!DOCTYPE html>
  <html>
    <body>
    <h1>Dart Tutorial</h1>
    <p>Dart is my favorite language/</p>
    </body>
  </html>
  ''';

  final heading = htmlText.substring(34, 47);
  print(heading);

  final start = htmlText.indexOf('<h1>') + '<h1>'.length;
  final end = htmlText.indexOf('</h1>');
  final calcHeading = htmlText.substring(start, end);
  print(calcHeading);
}
