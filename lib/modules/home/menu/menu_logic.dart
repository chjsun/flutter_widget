import 'package:flutter_widget/modules/home/home/home_logic.dart';
import 'package:get/get.dart';

import 'menu_state.dart';

class MenuLogic extends GetxController {
  final MenuState state = MenuState();

  change(String className) {
    HomeLogic logic = Get.find();
    logic.refreshContent(className);
  }
}
