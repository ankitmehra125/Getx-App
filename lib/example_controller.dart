import 'package:get/get.dart';

class ExampleController extends GetxController
{
  RxDouble opacity = 0.4.obs;

  // user Defined function
  chnageOpacity(double value)
  {
    opacity.value = value;
  }
}