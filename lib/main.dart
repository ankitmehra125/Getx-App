import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:state_getx/ex3.dart';
import 'package:state_getx/First.dart';
import 'package:state_getx/counter_page.dart';
import 'package:state_getx/example.dart';
import 'package:state_getx/faviorate_page.dart';
import 'package:state_getx/home_screen.dart';
import 'package:state_getx/imagepicker_page.dart';
import 'package:state_getx/languages.dart';
import 'package:state_getx/login_page.dart';

void main()
{
  runApp(DevicePreview(builder: (context){
    return MyApp();
  }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      fallbackLocale: Locale('en','US'),
      home: LoginPage(),
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/first', page: () => First(name: "Ankit"))
      ],
    );
  }
}
