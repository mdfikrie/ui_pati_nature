import 'package:get/get.dart';

import '../controllers/destination_controller.dart';

class DestinationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DestinationController>(
      () => DestinationController(),
    );
  }
}
