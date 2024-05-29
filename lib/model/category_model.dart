/// author chjsun
/// time: 2024/5/24 14:46
/// desc: $desc$
import 'package:flutter/material.dart';

abstract class CategoryConfig {
  Widget getWidget();
  CategoryModel models();
}

class CategoryModel {
  String? title;
  String? key;
  String? content;
  List<CategoryItemModel>? items;

  CategoryModel({this.title, this.key, this.content, this.items});
}

class CategoryItemModel {
  String? name;
  List<CategoryContentModel>? content = [];

  CategoryItemModel({this.name, this.content});
}

class CategoryContentModel {
  String? content;
  String? code;
  CategoryContentModel({this.content, this.code});
}
