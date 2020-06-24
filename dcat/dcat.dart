import 'dart:io';

import 'package:args/args.dart';

const lineNumber = 'line-number';

ArgResults argResults;

void main(List<String> arguments) {
  exitCode = 0;
  final parser = ArgParser()
    ..addFlag(lineNumber, negatable: false, abbr: 'n');
  
  argResults = parser.parse(arguments);
  final paths = argResults.rest;

  dcat(paths, argResults[lineNumber] as bool);
}

// Futureって何だ？Promise的な？
// async出てきた！
Future dcat(List<String> paths, bool showLineNumbers) async {
  // TODO: implement
}
