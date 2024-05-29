import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/model/category_model.dart';
import 'package:flutter_widget/widget/code.dart';
import 'package:get/get.dart';

import 'home_logic.dart';

class HomePage extends GetView<HomeLogic> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeLogic>(builder: (logic) {
      return Container(
        height: double.infinity,
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white10,
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: logic.state.model.items?.map((e) => _menu(e)).toList() ?? [],
                  ),
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: SafeArea(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: (logic.state.model.items?.map((e) => _widgetContent(e)).toList() ?? [])
                      ..insert(0, _content(logic.state.model.content ?? ''))
                      ..insert(0, _title(logic.state.model.title ?? '')),
                  ),
                ),
              ),
            )),
          ],
        ),
      );
    });
  }

  Widget _title(String title) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(left: 16, right: 10),
      child: SelectableText(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _content(String title) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(left: 16, right: 10),
      child: SelectableText(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    );
  }

  Widget _menu(CategoryItemModel model) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(left: 16, right: 10),
        child: Text(
          model.name ?? '',
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  Widget _widgetContent(CategoryItemModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          margin: const EdgeInsets.fromLTRB(16, 10, 16, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: SelectableText(
            model.name ?? '',
            style: const TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          margin: const EdgeInsets.fromLTRB(26, 2, 16, 5),
          height: 8,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff0e2970),
                Color(0xff6d2279),
                Color(0xffaf0a6a),
                Color(0xffdb2449),
                Color(0xffeb5d12),
              ],
            ),
          ),
          child: SelectableText(
            model.name ?? '',
            style: const TextStyle(color: Colors.transparent),
          ),
        ),
        Column(
          children: model.content?.map((e) => _widgetCode(e)).toList() ?? [],
        )
      ],
    );
  }

  Widget _widgetCode(CategoryContentModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.fromLTRB(16, 10, 16, 0),
          decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SelectableText(
            model.content ?? '',
            style: const TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
        CodeWidget(code: model.code ?? ''),
      ],
    );
  }
}
