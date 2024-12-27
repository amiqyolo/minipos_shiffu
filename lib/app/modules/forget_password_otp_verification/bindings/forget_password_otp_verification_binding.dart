import 'package:get/get.dart';

import '../controllers/forget_password_otp_verification_controller.dart';

class ForgetPasswordOtpVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgetPasswordOtpVerificationController>(
      () => ForgetPasswordOtpVerificationController(),
    );
  }
}
