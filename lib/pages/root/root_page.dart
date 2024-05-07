import 'package:flutter/material.dart';
import 'package:flutter_widget/modules/category/button/text_button.dart';
import 'package:flutter_widget/modules/home/home/home_page.dart';
import 'package:flutter_widget/modules/home/menu/menu_page.dart';
import 'package:flutter_widget/widget/code.dart';
import 'package:get/get.dart';

import 'root_logic.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 200,
            child: MenuPage(),
          ),
          Expanded(
            child: HomePage(),
          )
        ],
      ),
    );
  }
}
