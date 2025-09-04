import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/screens/jollofrice/controller/jollof_rice_controller.dart';
import 'package:get/get.dart';


class CustomDropdown extends StatelessWidget {
  CustomDropdown({super.key});

  final JollofRiceController controller = Get.put(JollofRiceController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.orange,
          width: 2,
        ),
      ),
      child: Obx(
            () => DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: controller.selectedItem.value.isEmpty
                ? null
                : controller.selectedItem.value,
            hint: const Text("Select Item"),
            isExpanded: true,
            isDense: false,
            alignment: AlignmentDirectional.bottomEnd,
            icon: const Icon(Icons.arrow_drop_down, color: ThemeManager.primaryColor),
            dropdownColor: ThemeManager.white,
            items: controller.items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (newValue) {
              controller.selectedItem.value = newValue!;
            },
          ),
        ),
      ),
    );
  }
}
