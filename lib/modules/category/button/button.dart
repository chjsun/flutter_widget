import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widget/model/category_model.dart';
import 'package:flutter_widget/modules/category/button/button_exp.dart';

class ButtonConfig {
  Widget getWidget() => ButtonExample();

  Future<String> getCodeWithName(String name) async {
    String content = await rootBundle.loadString('lib/modules/category/button/$name.dart');
    return content;
  }

  Future<CategoryModel> models() async => CategoryModel(
        title: '按钮',
        key: 'button',
        content:
            '''Flutter提供了多种按钮组件（RaisedButton、 FlatButton、OutlineButton、 DropdownButton、RawMaterialButton、 PopupMenuButton、IconButton、BackButton、 CloseButton、 ButtonBar、ToggleButtons）
            它们都是直接或间接封装了RawMaterialButton，因此⼤部分的通⽤属性相同。所有Material 库中的按钮都有两个相同点︓
            1、点击会有⽔波动画
            2、通过onPressed属性设置点击后的回调，如果该属性为空，则按钮⽆法点击
    ''',
        items: [
          CategoryItemModel(
              name: 'TextButton',
              content: [CategoryContentModel(content: '⽂本按钮，默认背景透明并不带阴影。', code: await getCodeWithName('text_button'))]),
          CategoryItemModel(name: 'FlatButton', content: [
            CategoryContentModel(content: '扁平风格按钮', code: '''
          FlatButton(
           child: Text("点击"),
           onPressed: () => showToast("FlatButton")
          )
          ''')
          ]),
        ],
      );
}
