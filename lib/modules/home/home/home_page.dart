import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/code.dart';
import 'package:get/get.dart';

import 'home_logic.dart';

class HomePage extends GetView<HomeLogic> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeLogic>(builder: (logic) {
      List menus = logic.state.content.keys.toList();
      if (menus.isEmpty) {
        return const SizedBox();
      }
      return Row(
        children: [
          Column(
            children: menus.map((e) => Text(e)).toList(),
          ),
          Expanded(
              child: Column(
            children: menus.map((e) => logic.state.content[e][1] as Widget).toList(),
          ))
        ],
      );
    });
  }
}
