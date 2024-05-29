/// author chjsun
/// time: 2024/5/13 14:59
/// desc: $desc$
import 'package:flutter/material.dart';
import 'package:flutter_widget/model/category_model.dart';

class MenuModel {
  String? name;
  dynamic key;
  bool hasSelect;

  MenuModel({this.name, this.key, this.hasSelect = false});
}
