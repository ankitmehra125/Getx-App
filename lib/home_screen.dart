import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_getx/counter_page.dart';
import 'package:state_getx/languages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: ()
            {
              Get.snackbar(
                "Flutter",
                "Welcome to Flutter Tutorial",
                backgroundColor: Colors.lightGreenAccent,
                snackPosition: SnackPosition.BOTTOM,
                duration: Duration(seconds: 2)
              );
            },
            child: Center(
              child: Text("GetX SnackBar"),
            ),
          ),

          SizedBox(height: 25,),
          GestureDetector(
            onTap: ()
            {
              Get.defaultDialog(
                title: "Message",
                content: Text("Do you want to exit?"),
                confirm: TextButton(
                  onPressed: ()
                  {
                    Get.back();
                  },
                  child: Text("Yes"),
                ),
                cancel: TextButton(
                  onPressed: ()
                  {
                    Get.back();
                  },
                  child: Text("No"),
                )
              );
            },
            child: Center(
              child: Text("GetX AlertBox"),
            ),
          ),

          SizedBox(height: 25,),
          GestureDetector(
            onTap: ()
            {
              Get.bottomSheet(
                Container(
                  width: double.infinity,
                  height: Get.height*0.6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)
                    )
                  ),
                )
              );
            },
            child: Text("GetX BottomSheet"),
          ),

          SizedBox(height: 25,),
          ListTile(
            leading: Icon(Icons.light_mode),
            title: Text("Light Mode"),
            onTap: ()
            {
              Get.changeTheme(ThemeData.light());
            },
          ),
          ListTile(
            leading: Icon(Icons.dark_mode),
            title: Text("Dark Mode"),
            onTap: ()
            {
              Get.changeTheme(ThemeData.dark());
            },
          ),
          
          SizedBox(height: 25,),
          GestureDetector(
            onTap: ()
              {
                Get.to(CounterPage()); // In Get.to() we can navigate Previous page
                // Get.off(CounterPage()); // In Get.off() we can not navigate Previous page
              },
              child: Text("Next")
          ),

          SizedBox(height: 25,),
          GestureDetector(
            onTap: ()
            {

            },
            child: Text("Hello"),
          )
        ],
      ),
    );
  }
}
