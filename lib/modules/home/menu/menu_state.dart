import 'package:flutter_widget/modules/category/button/button.dart';
import 'package:flutter_widget/modules/home/menu/menu_model.dart';

class MenuState {
  Map menus = {
    '基础组件': [
      MenuModel(name: '按钮', key: ButtonConfig()),
      MenuModel(name: '文本', key: ButtonConfig()),
      MenuModel(name: '图片/图标', key: ButtonConfig()),
      MenuModel(name: '开关', key: ButtonConfig()),
      MenuModel(name: '复选', key: ButtonConfig()),
      MenuModel(name: '单选', key: ButtonConfig()),
      MenuModel(name: '进度条', key: ButtonConfig()),
      MenuModel(name: '滑块', key: ButtonConfig()),
    ],
    '布局组件': [
      MenuModel(name: '约束组件', key: ButtonConfig()),

      MenuModel(name: '线性布局', key: ButtonConfig()),
      MenuModel(name: '流式布局', key: ButtonConfig()),
      MenuModel(name: '层叠布局', key: ButtonConfig()),
      MenuModel(name: '自定义布局', key: ButtonConfig()),
      MenuModel(name: '组件相对父组件布局', key: ButtonConfig()),
      MenuModel(name: '多容器组合', key: ButtonConfig()),
      MenuModel(name: '根据父组件约束值动态布局', key: ButtonConfig()),

      // MenuModel(name: '线性布局', key: 'flex'),
      // MenuModel(name: '流式布局', key: 'wrap'),
      // MenuModel(name: '层叠布局', key: 'stack'),
      // MenuModel(name: '自定义布局', key: 'flow'),
      // MenuModel(name: '组件相对父组件布局', key: 'center'),
      // MenuModel(name: '多容器组合', key: 'container'),
      // MenuModel(name: '根据父组件约束值动态布局', key: 'layoutBuilder'),
    ],
    '装饰组件': [
      MenuModel(name: '背景/边框/渐变等', key: ButtonConfig()),
      MenuModel(name: '矩阵变换', key: ButtonConfig()),
      MenuModel(name: '旋转', key: ButtonConfig()),
      MenuModel(name: '裁剪', key: ButtonConfig()),

      // MenuModel(name: '背景/边框/渐变等', key: 'decoratedBox'),
      // MenuModel(name: '矩阵变换', key: 'Transform'),
      // MenuModel(name: '旋转', key: 'rotatedBox'),
      // MenuModel(name: '裁剪', key: 'clip'),
    ],
    '滚动组件': [
      MenuModel(name: '单组件滚动', key: ButtonConfig()),
      MenuModel(name: '滚动列表', key: ButtonConfig()),
      MenuModel(name: '滚动表格', key: ButtonConfig()),
      MenuModel(name: '多Tab页面', key: ButtonConfig()),
      MenuModel(name: '合并滚动组件', key: ButtonConfig()),

      // MenuModel(name: '单组件滚动', key: 'singleChildScrollView'),
      // MenuModel(name: '滚动列表', key: 'ListView'),
      // MenuModel(name: '滚动表格', key: 'gridView'),
      // MenuModel(name: '多Tab页面', key: 'pageView'),
      // MenuModel(name: '合并滚动组件', key: 'customScrollView'),
    ],
    '功能性组件': [
      MenuModel(name: '页面框架', key: ButtonConfig()),
      MenuModel(name: '对话框', key: ButtonConfig()),

      // MenuModel(name: '页面框架', key: 'singleChildScrollView'),
      // MenuModel(name: '对话框', key: 'ListView'),
    ],
    '手势识别': [
      MenuModel(name: '常见手势', key: ButtonConfig()),
      MenuModel(name: '带水波纹效果的点击', key: ButtonConfig()),
      MenuModel(name: '拖动', key: ButtonConfig()),

      // MenuModel(name: '常见手势', key: 'gestureDetector'),
      // MenuModel(name: '带水波纹效果的点击', key: 'inkWell'),
      // MenuModel(name: '拖动', key: 'draggable'),
    ],
  };
  MenuState() {
    ///Initialize variables
  }
}
