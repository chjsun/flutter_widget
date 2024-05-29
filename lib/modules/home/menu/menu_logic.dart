import 'package:flutter_widget/modules/home/home/home_logic.dart';
import 'package:flutter_widget/modules/home/menu/menu_model.dart';
import 'package:get/get.dart';

import 'menu_state.dart';

class MenuLogic extends GetxController {
  final MenuState state = MenuState();

  button(MenuModel model) {
    for (String key in state.menus.keys) {
      for (MenuModel menuModel in state.menus[key]) {
        menuModel.hasSelect = false;
      }
    }
    model.hasSelect = true;
    HomeLogic homeLogic = Get.find();
    homeLogic.refreshContent(model.key);
    update();
  }
}
