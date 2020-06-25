String scream(int length) => "A${'a' * length}h!";

main() {
  final values = [1, 2, 3, 5, 10, 50];

  // imperative
  for (var length in values) {
    print(scream(length));
  }

  // functinal
  values.map(scream).forEach(print);

  values.skip(1).take(3).map(scream).forEach(print);
}