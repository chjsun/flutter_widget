/// author chjsun
/// time: 2024/5/7 15:05
/// desc: $desc$
import 'package:flutter/material.dart';

class SimpleTextButton extends StatelessWidget {
  const SimpleTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, child: const Text("文本按钮"));
  }
}
