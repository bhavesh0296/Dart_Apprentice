void main() {
  const cities = ["delhi", "new york", "bursa"];
  cities.forEach((element) => print(element));
  cities.forEach(
      print); // tear off example, passing print reference instead of calling it.
}
