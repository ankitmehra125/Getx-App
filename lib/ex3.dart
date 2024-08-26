  import 'package:flutter/material.dart';
  import 'package:get/get.dart';
  import 'package:state_getx/ex3_controller.dart';

  class Ex3 extends StatefulWidget {
    const Ex3({super.key});

    @override
    State<Ex3> createState() => _Ex3State();
  }

  class _Ex3State extends State<Ex3> {

    final Ex3Controller ex3controller = Get.put(Ex3Controller());

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx((){
              return Switch(
                value: ex3controller.isOn.value,
                onChanged: (value)
                {
                  ex3controller.changeSwitch(value);
                },
              );
            }),

            Obx((){
              return Checkbox(
                value: ex3controller.isChecked.value,
                onChanged: (value)
                {
                  ex3controller.changeCheckBox(value!);
                },
              );
            })
          ],
        ),
      );
    }
  }
