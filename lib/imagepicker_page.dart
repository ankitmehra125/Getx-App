import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_getx/imagePicker_controller.dart';

ImagepickerController ipController = Get.put(ImagepickerController());

class ImagepickerPage extends StatefulWidget {
  const ImagepickerPage({super.key});

  @override
  State<ImagepickerPage> createState() => _ImagepickerPageState();
}

class _ImagepickerPageState extends State<ImagepickerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx((){
          return GestureDetector(
            onTap: ()
            {
              ipController.getImage();
            },
            child: CircleAvatar(
              backgroundImage: ipController.imagePath.isNotEmpty ?
                                FileImage(File(ipController.imagePath.toString())) : null,
            ),
          );
        }),
      ),
    );
  }
}
