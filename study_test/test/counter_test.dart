import 'package:test/test.dart';
import 'package:study_test/counter.dart';

main() {
  test('Counter value should be incremented', () {
    final counter = Counter();

    counter.increment();

    expect(counter.value, 1);
  });
}