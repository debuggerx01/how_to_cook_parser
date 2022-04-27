import 'dart:io';

import 'package:how_to_cook_parser/utils/singleton.dart';

Future<bool> pullRepo({skipPull = false}) async {
  if (!Directory('./HowToCook').existsSync()) {
    print('Cloning "HowToCook" repo.');
    var processResult = await Process.run(
      'bash',
      ['-c', 'git clone https://github.com/Anduin2017/HowToCook.git'],
    );
    print(processResult.stdout);
    print(processResult.stderr);
  }

  ProcessResult? processResult1;

  if (!skipPull) {
    processResult1 = await Process.run(
      'bash',
      ['-c', 'git pull && git clean -f'],
      workingDirectory: './HowToCook',
    );

    print(processResult1.stdout);
    print(processResult1.stderr);
  }

  var processResult2 = await Process.run(
    'bash',
    ['-c', 'git log -1 --format="%h"'],
    workingDirectory: './HowToCook',
  );

  print('Current repo commit_id is ${processResult2.stdout}');
  print(processResult2.stderr);

  Singleton().currentRepoCommitId = processResult2.stdout.toString().trim();

  return processResult2.exitCode == 0 && (processResult1 == null || processResult1.exitCode == 0);
}
