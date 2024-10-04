

import 'package:get/get.dart';

import 'core/state_holder/bottom_nav_bar.dart';





class ControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(BottomNavBarController());
  }


}
