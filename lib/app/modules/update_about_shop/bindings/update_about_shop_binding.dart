import 'package:get/get.dart';

import '../controllers/update_about_shop_controller.dart';

class UpdateAboutShopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpdateAboutShopController>(
      () => UpdateAboutShopController(),
    );
  }
}
