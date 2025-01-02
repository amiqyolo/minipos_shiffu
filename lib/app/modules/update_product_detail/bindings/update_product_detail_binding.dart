import 'package:get/get.dart';

import '../controllers/update_product_detail_controller.dart';

class UpdateProductDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpdateProductDetailController>(
      () => UpdateProductDetailController(),
    );
  }
}
