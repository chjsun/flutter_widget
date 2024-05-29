import 'package:flutter/material.dart';

class TextButtonDemo extends StatelessWidget {
  const TextButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // 按钮点击事件
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.blue, // 背景色
        padding: EdgeInsets.zero, // 边距
        minimumSize: const Size(60, 30), // 最小大小
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        alignment: Alignment.centerLeft, // 对其方式
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // 设置圆角半径
        ),
        side: const BorderSide(width: 1.0, color: Colors.white), // 设置边框宽度和颜色
        iconColor: Colors.white,
      ),
      child: const Text('Button'),
    );
  }
}
