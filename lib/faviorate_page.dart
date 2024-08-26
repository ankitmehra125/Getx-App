import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_getx/faviorate_controller.dart';

class FavioratePage extends StatefulWidget {
  const FavioratePage({super.key});

  @override
  State<FavioratePage> createState() => _FavioratePageState();
}

class _FavioratePageState extends State<FavioratePage> {

  final FaviorateController faviorateController = Get.put(FaviorateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: faviorateController.lang.length,
        itemBuilder: (context,index)
        {
          return Card(
            color: Colors.white,
            child: ListTile(
              onTap: ()
              {

                if(faviorateController.tempLang.contains(faviorateController.lang[index]))
                  {
                    faviorateController.removeFromFaviorate(faviorateController.lang[index]);
                  }
                else {
                  faviorateController.addToFaviorate(faviorateController.lang[index]);
                }
              },
              trailing: Obx((){
                return Icon(Icons.favorite_outlined,
                  color: faviorateController.tempLang.contains(faviorateController.lang[index]) ? Colors.red : Colors.white,
                );
              }),
              title: Text(faviorateController.lang[index]),
            ),
          );
        },
      ),
    );
  }
}

