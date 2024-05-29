/// author chjsun
/// time: 2024/5/7 14:51
/// desc: $desc$
import 'package:any_syntax_highlighter/any_syntax_highlighter.dart';
import 'package:code_preview/code_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/config/code.dart';

class CodeWidget extends StatelessWidget {
  final String code;
  const CodeWidget({super.key, required this.code});

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: CodePreview(
          className: 'TextButtonDemo',
          customBuilder: (w, _) {
            return w;
          },
        ),
        // child: AnySyntaxHighlighter(
        //   '''${code}''',
        //   fontSize: 14,
        //   padding: 16,
        //   margin: 16,
        //   theme: CodeConfig.codeTheme,
        //   isSelectableText: true, // this creates a SelectableText.rich() widget, makes text selectable (by default false)
        //   copyIcon: const Icon(Icons.copy_rounded, color: Colors.white), // default is white colored icon
        //   hasCopyButton: true, // by default false
        // ),
      ),
    );
  }
}
