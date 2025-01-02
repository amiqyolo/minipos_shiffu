import 'package:get/get.dart';

import '../controllers/sales_recap_controller.dart';

class SalesRecapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SalesRecapController>(
      () => SalesRecapController(),
    );
  }
}
