import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DestinationController extends GetxController {
  RxBool favorite = false.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
