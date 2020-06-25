import 'package:test/test.dart';

main() {
  test('String.split() splits the string on the delimeter', () {
    var string = 'foo,bar,baz';
    expect(string.split(','), equals(['foo', 'bar', 'baz']));
  });

  test('String.trim() removes surrounding whitespace', () {
    var string = ' foo ';
    expect(string.trim(), equals('foo'));
  });
}
