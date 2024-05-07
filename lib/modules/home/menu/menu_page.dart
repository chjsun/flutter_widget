import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'menu_logic.dart';

class MenuPage extends GetView<MenuLogic> {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.cyan,
      child: Column(
        children: [
          TextButton(onPressed: () => controller.change('button'), child: Text("button")),
        ],
      ),
    );
  }
}
