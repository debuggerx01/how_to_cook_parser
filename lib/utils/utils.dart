import 'dart:convert' show utf8;
import 'package:crypto/crypto.dart' show sha1;

String computeHash(String input) => sha1.convert(utf8.encode(input)).toString();

String getCategory(String path) {
  var split = path.split('/');
  return split.length > 3 ? split[3] : '';
}
