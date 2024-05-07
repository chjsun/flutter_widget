/// author chjsun
/// time: 2024/5/7 14:51
/// desc: $desc$
import 'package:code_preview/code_preview.dart';
import 'package:flutter/material.dart';

class CodeWidget extends StatelessWidget {
  final String code;
  const CodeWidget({super.key, required this.code});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: CodePreview(className: code),
    );
  }
}
