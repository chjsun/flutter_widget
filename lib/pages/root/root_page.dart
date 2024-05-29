import 'package:flutter/material.dart';
import 'package:flutter_widget/modules/home/home/home_page.dart';
import 'package:flutter_widget/modules/home/menu/menu_page.dart';
import 'package:flutter_widget/modules/home/simulator/simulator_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          MenuPage(),
          Expanded(
            child: HomePage(),
          ),
          SizedBox(
            width: 375,
            child: SimulatorPage(),
          ),
        ],
      ),
    );
  }
}
