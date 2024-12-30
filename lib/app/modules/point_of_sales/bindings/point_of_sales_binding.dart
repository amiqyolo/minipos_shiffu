import 'package:get/get.dart';

import '../controllers/point_of_sales_controller.dart';

class PointOfSalesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PointOfSalesController>(
      () => PointOfSalesController(),
    );
  }
}
