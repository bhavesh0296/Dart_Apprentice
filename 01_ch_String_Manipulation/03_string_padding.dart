void main() {
  final time = Duration(hours: 1, minutes: 2, seconds: 8);
  final hours = time.inHours;
  final minutes = '${time.inMinutes % 60}'.padLeft(2, '0');
  final seconds = '${time.inSeconds % 60}'.padLeft(2, '0');

  final timeString = '$hours:$minutes:$seconds';
  print(timeString);
}
