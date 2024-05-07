/// author chjsun
/// time: 2024/5/7 13:24
/// desc: $desc$
import 'package:flutter/material.dart';
import 'package:flutter_widget/modules/home/home/home_binding.dart';
import 'package:flutter_widget/modules/home/home/home_page.dart';
import 'package:flutter_widget/modules/home/menu/menu_binding.dart';
import 'package:flutter_widget/pages/root/root_binding.dart';
import 'package:flutter_widget/pages/root/root_page.dart';
import 'package:flutter_widget/routes/routes.dart';
import 'package:get/get.dart';

class RoutesPage {
  RoutesPage._();

  static List<GetPage> pages = [
    GetPage(name: Routes.root, page: () => const RootPage(), bindings: [
      RootBinding(),
      HomeBinding(),
      MenuBinding(),
    ]),
  ];
}
