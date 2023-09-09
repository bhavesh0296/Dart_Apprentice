void main() {
  const csvFileLine = 'Martin,Emma,12,Paris,France';
  final fields = csvFileLine.split(',');
  print(fields);

  final joined = fields.join('@');
  print(joined);
}
