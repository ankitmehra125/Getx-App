import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_getx/counter_controller.dart';

final CounterController counterController = Get.put(CounterController());

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx((){
          return Text(counterController.a.value.toString(),style: TextStyle(
            fontSize: 32
          ),);
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          counterController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
