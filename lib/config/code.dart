/// author chjsun
/// time: 2024/5/8 12:59
/// desc: $desc$
import 'package:any_syntax_highlighter/themes/any_syntax_highlighter_theme.dart';
import 'package:flutter/material.dart';

class CodeConfig {
  static AnySyntaxHighlighterTheme codeTheme = AnySyntaxHighlighterTheme(
      decoration: BoxDecoration(
        color: Colors.black.withAlpha(180),
        borderRadius: BorderRadius.circular(16),
      ),
      wordSpacing: 4,
      classStyle: const TextStyle(color: Color.fromRGBO(113, 176, 251, 1)),
      staticStyle: const TextStyle(color: Color.fromRGBO(255, 255, 255, 0)),
      constructor: const TextStyle(color: Color.fromRGBO(113, 176, 251, 1)),
      multilineComment: const TextStyle(color: Color.fromRGBO(187, 174, 170, 1)),
      comment: const TextStyle(color: Color.fromRGBO(187, 174, 170, 1)),
      keyword: const TextStyle(
        color: Color.fromRGBO(251, 114, 116, 0.807843137254902),
        fontWeight: FontWeight.bold,
      ),
      identifier: const TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
      function: const TextStyle(color: Color.fromRGBO(200, 132, 251, 1)),
      number: const TextStyle(color: Color.fromRGBO(113, 176, 251, 1)),
      string: const TextStyle(color: Color.fromRGBO(113, 176, 251, 1)),
      operator: const TextStyle(
        color: Color.fromRGBO(251, 114, 116, 0.807843137254902),
        fontWeight: FontWeight.bold,
      ),
      separator: const TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
      method: const TextStyle(color: Color.fromRGBO(200, 132, 251, 1)),
      private: const TextStyle(color: Color.fromRGBO(255, 255, 255, 0)),
      fontFeatures: [const FontFeature.slashedZero()]);
}
