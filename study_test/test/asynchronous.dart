import 'dart:async';
import 'package:test/test.dart';

void main() {
  // async/awaitを使う
  test('Future.value() returns the value', () async {
    var value = await Future.value(10);
    expect(value, equals(10));
  });

  // async/awaitなしで書く場合は、completionを使う  
  test('Future.value() returns the value', () {
    expect(Future.value(10), completion(equals(10)));
  });
}
