import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_getx/example_controller.dart';

final ExampleController exampleController = Get.put(ExampleController());

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx((){
            return Center(
              child: Container(
                width: Get.width*0.5,
                height: Get.height*0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.red.withOpacity(exampleController.opacity.value)
                ),
              ),
            );
          }),

          Obx((){
            return Slider(
              value: exampleController.opacity.value,
              onChanged: (value)
              {
                exampleController.chnageOpacity(value);
              },
            );
          })
        ],
      ),
    );
  }
}
