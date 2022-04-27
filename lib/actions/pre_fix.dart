import 'dart:io';

import 'package:yaml/yaml.dart';

Future<bool> preFix() async {
  var yaml = loadYaml(File('./fixes.yaml').readAsStringSync()) ?? {};
  for (var key in yaml.keys) {
    if (!_handleFix(_Fix.fromMap(key, yaml[key]))) return false;
  }
  return true;
}

bool _handleFix(_Fix fix) {
  bool multiFix = File('./HowToCook/${fix.path}.fixed').existsSync();
  if (multiFix) {
    fix.path = '${fix.path}.fixed';
  }
  var file = File('./HowToCook/${fix.path}');
  var err = 'Fix ${fix.name} failed: ';
  if (!file.existsSync()) {
    print(err + 'file of ${fix.path} not exists !');
    return false;
  }
  var content = file.readAsStringSync();
  if (!content.contains(fix.probe)) {
    print(err + "can't find probe '${fix.probe}' in file ${fix.path}");
    return false;
  }

  switch (fix.fixType) {
    case FixType.insertAfter:
      fix.text = '${fix.probe}${fix.text}';
      break;
    case FixType.insertBefore:
      fix.text = '${fix.text}${fix.probe}';
      break;
    default:
  }

  var fixedFile = File('./HowToCook/${fix.path}${multiFix ? '' : '.fixed'}');
  if (fixedFile.existsSync()) fixedFile.deleteSync();
  fixedFile.createSync();
  fixedFile.writeAsStringSync(content.replaceFirst(fix.probe, fix.text));

  return true;
}

enum FixType {
  replace,
  insertBefore,
  insertAfter,
}

class _Fix {
  _Fix({
    required this.name,
    required this.path,
    required this.probe,
    required this.fixType,
    required this.text,
  });

  factory _Fix.fromMap(String name, Map map) => _Fix(
        name: name,
        path: map['path'],
        probe: map['probe'],
        fixType: FixType.values.byName(map['fixType']),
        text: map['text'],
      );

  String name;
  String path;
  String probe;
  FixType fixType;
  String text;
}
