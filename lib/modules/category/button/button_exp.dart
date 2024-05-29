/// author chjsun
/// time: 2024/5/24 14:28
/// desc: $desc$
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:oktoast/oktoast.dart';

class ButtonExampleModel {
  ButtonExampleModel();

  RxInt dropdownButtonValue = 1.obs;
  RxSet segmentedButtonValue = <dynamic>{1}.obs;
  RxList<bool> toggleButtonsValue = [false, false, false, false, false].obs;
}

class ButtonExample extends StatelessWidget {
  final ButtonExampleModel model = ButtonExampleModel();

  ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            showToast('文本按钮（TextButton）点击');
          },
          child: const Text("文本按钮"),
        ),
        ElevatedButton(
            onPressed: () {
              showToast("ElevatedButton");
            },
            child: const Text("ElevatedButton")),
        FilledButton(
            onPressed: () {
              showToast("FilledButton");
            },
            child: const Text("FilledButton")),
        OutlinedButton(
            onPressed: () {
              showToast("OutlinedButton");
            },
            child: const Text("OutlinedButton")),
        IconButton(
            onPressed: () {
              showToast("IconButton");
            },
            icon: const Icon(Icons.import_contacts_sharp)),
        BackButton(
          color: Colors.green,
          onPressed: () {
            showToast('回退（BackButton）点击');
          },
        ),
        CloseButton(
          color: Colors.red,
          onPressed: () {
            showToast('关闭（CloseButton）点击');
          },
        ),
        DrawerButton(
          onPressed: () {
            showToast('（DrawerButton）点击');
          },
        ),
        Obx(() {
          return SegmentedButton(
            segments: const [
              ButtonSegment(label: Text("Segmented"), icon: Icon(Icons.add), value: 1),
              ButtonSegment(label: Text("Button"), icon: Icon(Icons.favorite), value: 2),
              ButtonSegment(label: Text("x"), icon: Icon(Icons.do_not_disturb), value: 3),
            ],
            selected: model.segmentedButtonValue,
            onSelectionChanged: (t) {
              model.segmentedButtonValue.clear();
              model.segmentedButtonValue.add(t.first);
            },
          );
        }),
        Container(
          padding: const EdgeInsets.all(16),
          child: SubmenuButton(
            menuChildren: _menuList(),
            child: const Text("联级菜单按钮 SubmenuButton"),
          ),
        ),
        Obx(() {
          return ToggleButtons(
            isSelected: model.toggleButtonsValue,
            children: const [
              Text('ToggleButtons'),
              Icon(Icons.add_a_photo_rounded),
              Icon(Icons.add_circle),
              Icon(Icons.cake_rounded),
              Icon(Icons.handshake),
            ],
            onPressed: (v) {
              model.toggleButtonsValue[v] = !model.toggleButtonsValue[v];
            },
          );
        }),
        const SizedBox(height: 20),
        Obx(() {
          return DropdownButton(
              value: model.dropdownButtonValue.value,
              items: const [
                DropdownMenuItem(value: 1, child: Text("drop1")),
                DropdownMenuItem(value: 2, child: Text("drop2")),
              ],
              onTap: () {
                showToast('打开 DropdownButton');
              },
              onChanged: (t) {
                model.dropdownButtonValue.value = t ?? 0;
                showToast('选择值 = $t');
              });
        }),
      ],
    );
  }

  List<Widget> _menuList() {
    return <Widget>[
      MenuItemButton(
        child: const Text('关于我们'),
        onPressed: () => {},
      ),
      MenuItemButton(
        onPressed: () => {},
        child: const Text('世界局势'),
      ),
      MenuItemButton(
        onPressed: () => {},
        child: const Text('公开信息'),
      ),
    ];
  }
}
