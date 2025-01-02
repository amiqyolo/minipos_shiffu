import 'package:get/get.dart';

import '../modules/about_app/bindings/about_app_binding.dart';
import '../modules/about_app/views/about_app_view.dart';
import '../modules/about_shop/bindings/about_shop_binding.dart';
import '../modules/about_shop/views/about_shop_view.dart';
import '../modules/change_password/bindings/change_password_binding.dart';
import '../modules/change_password/views/change_password_view.dart';
import '../modules/change_password_success/bindings/change_password_success_binding.dart';
import '../modules/change_password_success/views/change_password_success_view.dart';
import '../modules/forget_password/bindings/forget_password_binding.dart';
import '../modules/forget_password/views/forget_password_view.dart';
import '../modules/forget_password_otp_verification/bindings/forget_password_otp_verification_binding.dart';
import '../modules/forget_password_otp_verification/views/forget_password_otp_verification_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/payment_summary/bindings/payment_summary_binding.dart';
import '../modules/payment_summary/views/payment_summary_view.dart';
import '../modules/point_of_sales/bindings/point_of_sales_binding.dart';
import '../modules/point_of_sales/views/point_of_sales_view.dart';
import '../modules/product/bindings/product_binding.dart';
import '../modules/product/views/product_view.dart';
import '../modules/product_detail/bindings/product_detail_binding.dart';
import '../modules/product_detail/views/product_detail_view.dart';
import '../modules/purchase_detail/bindings/purchase_detail_binding.dart';
import '../modules/purchase_detail/views/purchase_detail_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/update_about_shop/bindings/update_about_shop_binding.dart';
import '../modules/update_about_shop/views/update_about_shop_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASSWORD,
      page: () => const ForgetPasswordView(),
      binding: ForgetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASSWORD_OTP_VERIFICATION,
      page: () => const ForgetPasswordOtpVerificationView(),
      binding: ForgetPasswordOtpVerificationBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => const ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD_SUCCESS,
      page: () => const ChangePasswordSuccessView(),
      binding: ChangePasswordSuccessBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_SHOP,
      page: () => const AboutShopView(),
      binding: AboutShopBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE_ABOUT_SHOP,
      page: () => const UpdateAboutShopView(),
      binding: UpdateAboutShopBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_APP,
      page: () => const AboutAppView(),
      binding: AboutAppBinding(),
    ),
    GetPage(
      name: _Paths.POINT_OF_SALES,
      page: () => const PointOfSalesView(),
      binding: PointOfSalesBinding(),
    ),
    GetPage(
      name: _Paths.PURCHASE_DETAIL,
      page: () => const PurchaseDetailView(),
      binding: PurchaseDetailBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAIL,
      page: () => const ProductDetailView(),
      binding: ProductDetailBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_SUMMARY,
      page: () => const PaymentSummaryView(),
      binding: PaymentSummaryBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT,
      page: () => const ProductView(),
      binding: ProductBinding(),
    ),
  ];
}
