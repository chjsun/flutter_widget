import 'package:flutter_widget/modules/category/button/button.dart';
import 'package:get/get.dart';

import 'home_state.dart';

class HomeLogic extends GetxController {
  final HomeState state = HomeState();

  @override
  void onInit() {
    super.onInit();
    state.widgetMap = {
      'button': ButtonExplain.config,
    };
  }

  refreshContent(String className) {
    state.content = state.widgetMap[className];
    update();
  }
}
