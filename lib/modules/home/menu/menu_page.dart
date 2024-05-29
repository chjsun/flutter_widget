import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/modules/home/menu/menu_model.dart';
import 'package:get/get.dart';

import 'menu_logic.dart';

class MenuPage extends GetView<MenuLogic> {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: double.infinity,
      padding: const EdgeInsets.only(top: 20, left: 16, right: 20, bottom: 20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff0e2970),
            Color(0xff6d2279),
            Color(0xffaf0a6a),
            Color(0xffdb2449),
            Color(0xffeb5d12),
          ],
        ),
      ),
      child: SafeArea(
        child: GetBuilder<MenuLogic>(builder: (logic) {
          return ListView.builder(
            itemCount: logic.state.menus.length,
            itemBuilder: (_, index) {
              String key = logic.state.menus.keys.toList()[index];
              List<MenuModel> models = logic.state.menus[key];
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: models.map((e) => _cell(e)).toList()..insert(0, _title(key)),
              );
            },
          );
        }),
      ),
    );
  }

  Widget _title(String name) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10, top: 20),
      child: SelectableText(
        name,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _cell(MenuModel model) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: model.hasSelect ? Colors.white30 : Colors.transparent,
          ),
          onPressed: () => controller.button(model),
          child: Text(
            model.name ?? '',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }
}
