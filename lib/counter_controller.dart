import 'package:get/get.dart';

class CounterController extends GetxController
{
  RxInt a = 0.obs;

  // user defined function
  increment()
  {
    a.value++;
  }
}