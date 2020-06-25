import 'dart:async';

import 'package:test/test.dart';

void main() {
  test('Future.error() throws the error', () {
    expect(Future.error('oh no'), throwsA(equals('oh no')));
  });
}
