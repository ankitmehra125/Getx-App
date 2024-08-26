import 'package:get/get.dart';

class Ex3Controller extends GetxController
{
  RxBool isOn = false.obs; // for Switch
  RxBool isChecked = false.obs; // for Checkbox

  // user defined function for Switch
  changeSwitch(bool value)
  {
    isOn.value = value;
  }

  // user defined function for CheckBox
  changeCheckBox(bool value)
  {
    isChecked.value = value;
  }
}