void main() {
  const givenString = "How's the Dart book going? :]";
  String replaceEmojiString = givenString.replaceAll(':]', '👍');
  print(replaceEmojiString);
}
