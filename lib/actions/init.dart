import 'dart:ffi';
import 'dart:io';

import 'package:isar/isar.dart';
import 'package:path/path.dart' show join;

late List<String> stopWords = File('./3rd_party/jieba_flutter/assets/stop_words.txt').readAsLinesSync();

Future<bool> init() async {
  var dir = Directory('./build/images');
  if (!dir.existsSync()) {
    await dir.create(recursive: true);
  }
  dir = Directory('./build/db');
  if (!dir.existsSync()) {
    await dir.create();
  }

  var file = File('.packages');
  if (!file.existsSync()) {
    throw Exception('".packages" file not found');
  }
  for (var line in file.readAsLinesSync()) {
    if (line.startsWith('isar_flutter_libs')) {
      file = File(line.replaceFirst('isar_flutter_libs:file:/', ''));
      break;
    }
  }
  await Isar.initializeLibraries(
    libraries: {
      Abi.linuxX64: join(file.parent.path, 'linux/libisar.so'),
    },
  );

  return true;
}
