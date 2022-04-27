import 'dart:io';

import 'package:how_to_cook_parser/utils/singleton.dart';
import 'package:how_to_cook_parser/utils/utils.dart';
import 'package:markdown/markdown.dart' show Element, Node, Text;
import 'package:path/path.dart';

final supportedBlockTags = [
  'h1',
  'h2',
  'h3',
  'h4',
  'h5',
  'blockquote',
  'ul',
  'ol',
  'p',
  'pre',
  'hr',
];

String? mdASTSerialize(Node ele) {
  if (ele is Element && supportedBlockTags.contains(ele.tag)) {
    return _serialize(ele);
  }
  return null;
}

String? _serialize(Element ele) => _serializeNode(ele);

extension ParseChildren on Node {
  String serializedChildren() {
    if (this is Element) {
      var split = (this as Element).tag.split('_');
      var tag = split[0];
      var level = 0;
      if (split.length == 2) {
        level = int.parse(split[1]);
      }
      if (tag.startsWith(RegExp('[o|u]l'))) {
        var index = 1;
        var res = [];
        for (var child in (this as Element).children ?? <Node>[]) {
          if (child is Element && child.tag.startsWith('li')) {
            child = Element('li_$level', child.children);
          }
          res.add('  ' * level + (tag == 'ol' ? '${index++}. ${_serializeNode(child)}' : '- ${_serializeNode(child)}'));
        }
        return res.join('\n');
      } else if (tag == 'pre') {
        if (((this as Element).children?.first as Element?)?.tag == 'code') {
          return '`\n${((this as Element).children?.first as Element?)?.children?.map(_serializeNode).join()}`';
        }
        throw NotFoundCodeInPreError();
      } else if (tag.startsWith('li')) {
        return ((this as Element).children?.map((child) {
              if (child is Element && child.tag.startsWith(RegExp('[o|u]l'))) {
                child = Element('${child.tag}_${level + 1}', child.children);
                return '\n${_serializeNode(child)}';
              }
              return _serializeNode(child);
            }).join() ??
            '');
      }
      return (this as Element).children?.map(_serializeNode).join() ?? '';
    }
    return '';
  }
}

String? _serializeNode(Node ele) {
  if (ele is Element) {
    switch (ele.tag.split('_')[0]) {

      /// block
      case 'p':
        return ele.serializedChildren() + '\n';
      case 'h1':
        return '# ${ele.serializedChildren()}\n';
      case 'h2':
        return '## ${ele.serializedChildren()}\n';
      case 'h3':
        return '### ${ele.serializedChildren()}\n';
      case 'h4':
        return '#### ${ele.serializedChildren()}\n';
      case 'h5':
        return '##### ${ele.serializedChildren()}\n';
      case 'blockquote':
        return '> ${ele.serializedChildren().trim()}\n';
      case 'pre':
        return '``${ele.serializedChildren()}``\n';
      case 'hr':
        return '---\n';

      /// inline
      case 'a':
        return '[${ele.serializedChildren()}](${ele.attributes['href']})';
      case 'img':
        var attr = ele.attributes;
        var src = attr['src'] ?? '';
        src = join(File(Singleton().currentDishPath!).parent.path, src);
        src = '${computeHash(withoutExtension(normalize(src)))}.webp';
        if (attr['title'] != null && attr['title'] != '') {
          src += " ${attr['title']}";
        }
        return '![${attr['alt']}]($src)';
      case 'code':
        return '`${ele.serializedChildren()}`';
      case 'br':
        return '  \n';
      case 'em':
        return '*${ele.serializedChildren()}*';
      case 'strong':
        return '**${ele.serializedChildren()}**';
    }
    if (ele.tag.startsWith(RegExp('[o|u]l'))) {
      return '${ele.serializedChildren()}\n';
    } else if (ele.tag.startsWith('li')) {
      return ele.serializedChildren();
    }
  } else if (ele is Text) {
    return ele.textContent;
  }

  return null;
}

class NotFoundCodeInPreError extends Error {}
