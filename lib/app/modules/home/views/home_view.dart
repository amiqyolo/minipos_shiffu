import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:minipos_shiffu/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Color(0xFF4F62C1),
      ),
      child: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              // Header Section
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                  color: Color(0xFF4F62C1),
                ),
                padding: EdgeInsets.fromLTRB(0, 16.0, 0, 16.0),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.toNamed(Routes.ABOUT_SHOP);
                                },
                                borderRadius: BorderRadius.circular(6.0),
                                splashColor: Color(0xFF4F62C1),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.0),
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.all(10.0),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      'assets/vectors/icon_shop.svg',
                                      width: 24,
                                      colorFilter: ColorFilter.mode(
                                        Colors.blue,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 14.0),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'SELAMAT DATANG DI MINIPOS',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'TOKO SINAR JAYA',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 14.0),
                              IconButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStateProperty.all(Colors.white),
                                  shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),
                                ),
                                icon: Icon(Icons.menu, color: Colors.blue),
                                onPressed: () {
                                  Get.toNamed(Routes.ABOUT_APP);
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.0),
                        SvgPicture.asset(
                          'assets/vectors/dashboard_frame_no_logo.svg',
                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/vectors/minipos_logo.svg',
                            colorFilter:
                                ColorFilter.mode(Colors.white, BlendMode.srcIn),
                            width: 24.0,
                          ),
                          SizedBox(width: 6.0),
                          Text(
                            'MINIPOS',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 6.0),
                          Text(
                            'BY SHIFFUMEDIATEK',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              // Logo
              Transform.rotate(
                angle: -0.785398,
                child: SvgPicture.asset(
                  'assets/vectors/frame_item.svg',
                  width: 48.0,
                ),
              ),
              // Menu Grid Section
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 50.0),
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildMenuItem(
                    'assets/vectors/menu_shop.svg',
                    'POS',
                    () => Get.toNamed(Routes.POINT_OF_SALES),
                  ),
                  _buildMenuItem(
                    'assets/vectors/menu_bag.svg',
                    'PRODUCT',
                    () => Get.toNamed(Routes.HOME),
                  ),
                  _buildMenuItem(
                    'assets/vectors/menu_buy.svg',
                    'PENJUALAN',
                    () => Get.toNamed(Routes.HOME),
                  ),
                  _buildMenuItem(
                    'assets/vectors/menu_bill.svg',
                    'REKAP PENJUALAN',
                    () => Get.toNamed(Routes.HOME),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(String icon, String label, VoidCallback onClick) {
    return InkWell(
      onTap: () {
        onClick();
      },
      borderRadius: BorderRadius.circular(12.0),
      splashColor: Color(0xFF4F62C1),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFD9D9D9),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: SvgPicture.asset('assets/vectors/menu_frame.svg'),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(icon),
                  SizedBox(height: 8.0),
                  Text(
                    label,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF4F62C1),
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
