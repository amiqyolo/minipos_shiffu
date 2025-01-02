import 'package:get/get.dart';

import '../controllers/pos_product_detail_controller.dart';

class PosProductDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PosProductDetailController>(
      () => PosProductDetailController(),
    );
  }
}
