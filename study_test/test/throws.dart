import 'package:test/test.dart';

main() {
  test('.parse() fails on invalid input', () {
    // ここ() =>で渡すの何で何だっけ？
    expect(() => int.parse('X'), throwsFormatException);
  });
}
