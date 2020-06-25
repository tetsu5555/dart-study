import 'package:test/test.dart';

main() {
  test('.split() splits the string on the delimeter', () {
    // allOf！！！
    expect('foo,bar,baz', allOf([
      contains('foo'),
      isNot(startsWith('bar')),
      endsWith('baz')
    ]));
  });
}
