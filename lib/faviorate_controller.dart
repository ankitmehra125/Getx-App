import 'package:get/get.dart';

class FaviorateController extends GetxController
{
  RxList<String> lang = ["C","C++","Java","Dart"].obs;
  RxList tempLang = [].obs;


  addToFaviorate(String value)
  {
    tempLang.add(value);
  }

  removeFromFaviorate(String value)
  {
    tempLang.remove(value);
  }
}