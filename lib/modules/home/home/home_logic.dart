import 'package:flutter/foundation.dart';
import 'package:flutter_widget/model/category_model.dart';
import 'package:flutter_widget/modules/category/button/button.dart';
import 'package:flutter_widget/modules/example/base/base_logic.dart';
import 'package:get/get.dart';

import 'home_state.dart';

class HomeLogic extends GetxController {
  final HomeState state = HomeState();

  @override
  void onInit() {
    super.onInit();
  }

  refreshContent(dynamic model) async {
    state.model = await model.models();
    BaseLogic baseLogic = Get.find();
    baseLogic.refreshExample(model.getWidget());
    update();
  }
}
