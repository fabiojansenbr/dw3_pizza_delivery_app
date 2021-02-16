import 'package:dw3_pizza_delivery_app/models/menu_item_model.dart';
import 'package:dw3_pizza_delivery_app/models/menu_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../menu_controller.dart';
import 'menu_group.dart';

class MenuContent extends GetView<MenuController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Obx(
        () => ListView.builder(
          itemCount: controller.menu.length,
          itemBuilder: (_, index) {
            return MenuGroup(controller.menu[index]);
          },
        ),
      ),
    );
  }
}
