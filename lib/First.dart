import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen.dart';

class First extends StatefulWidget {
  final String name;
  const First({super.key, required this.name});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("First Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: ()
              {
                Get.back();
              },
              child: Text("Back"),
            ),
            SizedBox(height: 20,),
            Text("Hello " + widget.name )
          ],
        ),
      ),
    );
  }
}
