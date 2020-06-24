import 'dart:convert';
import 'dart:io';
import 'package:args/args.dart';

const lineNumber = 'line-number';

void main(List<String> arguments) {
  exitCode = 0;

  // ArgParserはarg libraryが提供する、コマンドライン引数をパースするparser
  final parser = ArgParser()
    ..addFlag(lineNumber, negatable: false, abbr: 'n'); // --line-number, -nオプションを追加

  // ↑はこれと同じ
  // final parser = ArgParser();
  // parser.addFlag(lineNumber, negatable: false, abbr: 'n');
  
  var argResults = parser.parse(arguments);
  final paths = argResults.rest;

  dcat(paths, argResults[lineNumber] as bool);
}

// Futureって何だ？Promise的な？
// async出てきた！
Future dcat(List<String> paths, bool showLineNumbers) async {
  if (paths.isEmpty) {
    // 引数が渡されてない場合はstdinから読み込んで、それぞれの行をprintする
    await stdin.pipe(stdout);
  } else {
    for (var path in paths) {
      var lineNumber = 1;
      // ここよくわからん
      final lines = utf8.decoder
        .bind(File(path).openRead()) // openReadメソッドでファイルを開く、このメソッドはstreamを返す
        .transform(const LineSplitter());

      try {
        // ファイルじゃない場合ここで例外が発生する？なんでだろう？
        await for (var line in lines) {
          if (showLineNumbers) {
            stdout.write('${lineNumber++} ');
          }
          stdout.writeln(line);
        }
      } catch (_) {
        await _handleError(path);
      }
    }
  }
}

Future _handleError(String path) async {
  // FileSystemEntityって何だ？
  // Futureを使って値を返すため、awaitしている
  if (await FileSystemEntity.isDirectory(path)) {
    stderr.writeln('error: $path is a directory');
  } else {
    exitCode = 2;
  }
}
