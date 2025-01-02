import 'package:get/get.dart';

import '../controllers/sale_payment_summary_controller.dart';

class SalePaymentSummaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SalePaymentSummaryController>(
      () => SalePaymentSummaryController(),
    );
  }
}
