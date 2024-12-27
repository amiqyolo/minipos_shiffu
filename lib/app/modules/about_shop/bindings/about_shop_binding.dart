import 'package:get/get.dart';

import '../controllers/about_shop_controller.dart';

class AboutShopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutShopController>(
      () => AboutShopController(),
    );
  }
}
