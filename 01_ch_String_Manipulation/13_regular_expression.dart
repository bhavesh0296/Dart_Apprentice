void main() {
  final regex = RegExp('cat');
  print(regex.hasMatch('concatenation'));
  print(regex.hasMatch('dog'));
  print(regex.hasMatch('cats'));

  final matchSingle = RegExp('c.t');
  print(matchSingle.hasMatch('cat'));
  print(matchSingle.hasMatch('cot'));
  print(matchSingle.hasMatch('cut'));
  print(matchSingle.hasMatch('ct'));

  final optionalString = RegExp('c.?t');
  print(optionalString.hasMatch('cat'));
  print(optionalString.hasMatch('cot'));
  print(optionalString.hasMatch('cut'));
  print(optionalString.hasMatch('ct'));

  final oneOrMore = RegExp('wo+w');
  print(oneOrMore.hasMatch('ww'));
  print(oneOrMore.hasMatch('wow'));
  print(oneOrMore.hasMatch('wooow'));
  print(oneOrMore.hasMatch('wooooooooow'));

  final zeroOrMore = RegExp('wo*w');
  print(zeroOrMore.hasMatch('ww'));
  print(zeroOrMore.hasMatch('wow'));
  print(zeroOrMore.hasMatch('wooow'));
  print(zeroOrMore.hasMatch('wooooooow'));

  final anyOneorMore = RegExp('w.+w');
  print(anyOneorMore.hasMatch('ww'));
  print(anyOneorMore.hasMatch('wow'));
  print(anyOneorMore.hasMatch('w123w'));
  print(anyOneorMore.hasMatch('wABCDEFGw'));

  final set = RegExp('b[oa]t');
  print(set.hasMatch('bat'));
  print(set.hasMatch('bot'));
  print(set.hasMatch('but'));
  print(set.hasMatch('boat'));
  print(set.hasMatch('bt'));

  final letters = RegExp('[a - zA - Z]');
  print(letters.hasMatch('a'));
  print(letters.hasMatch('H'));
  print(letters.hasMatch('3z'));
  print(letters.hasMatch('2'));

  final exculded = RegExp('b[^ao]t');
  print(exculded.hasMatch('bat'));
  print(exculded.hasMatch('bot'));
  print(exculded.hasMatch('but'));
  print(exculded.hasMatch('boat'));
  print(exculded.hasMatch('bt'));

  final escaped = RegExp(r'c\.t');
  print(escaped.hasMatch('c.t'));
  print(escaped.hasMatch('cat'));

  print('Numhers Matched');
  final numbers = RegExp(r'[0-9]');
  print(numbers.hasMatch('12345'));
  print(numbers.hasMatch('asdkjf235'));

  // Regular Expression to match wheter this string contains only number
  print("Match Sting contain only numbers");
  final onlyNumbers = RegExp(r'^[0-9]+$');
  print(onlyNumbers.hasMatch('12345'));
  print(onlyNumbers.hasMatch('asdkjf235'));

  // Validating a password
  print('validating a password into this');
  const password = 'Password1234';
  final lowercase = RegExp(r'[a-z]');
  final uppercase = RegExp(r'[A-Z]');
  final number = RegExp(r'[0-9]');
  final goodLenght = RegExp(r'.{12,}');

  if (!password.contains(lowercase)) {
    print('Your password must have a lowercase letter!');
  } else if (!password.contains(uppercase)) {
    print('Your password must have an uppercase letter!');
  } else if (!password.contains(number)) {
    print('Your password must have a number');
  } else {
    print('Your password is Okay');
  }
}
