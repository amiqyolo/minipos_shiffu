import 'package:get/get.dart';

import '../controllers/purchase_detail_controller.dart';

class PurchaseDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PurchaseDetailController>(
      () => PurchaseDetailController(),
    );
  }
}
