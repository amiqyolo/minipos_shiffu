import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/change_password_success_controller.dart';

class ChangePasswordSuccessView
    extends GetView<ChangePasswordSuccessController> {
  const ChangePasswordSuccessView({super.key});
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Color(0xFF4F62C1),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: LayoutBuilder(
            builder: (context, constraints) {
              final maxHeight = constraints.maxHeight;
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: maxHeight),
                  child: IntrinsicHeight(
                    child: Container(
                      width: Get.width,
                      margin: EdgeInsets.only(top: 48.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Transform.rotate(
                            angle: -0.785398,
                            child: SvgPicture.asset(
                              'assets/vectors/frame_item.svg',
                            ),
                          ),
                          SizedBox(height: 40.0),
                          SvgPicture.asset(
                            'assets/vectors/completed.svg',
                            width: 200.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 30.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'Ganti Password Berhasil',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF4F62C1),
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Silahkan Login kembali untuk masuk ke aplikasi',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF4F62C1),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 24.0),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: SizedBox.fromSize(
                              size: Size(Get.width, 48.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF4F62C1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  padding: EdgeInsets.fromLTRB(
                                      20.0, 12.0, 20.0, 12.0),
                                ),
                                onPressed: () {
                                  Get.toNamed(Routes.LOGIN);
                                },
                                child: Text(
                                  'Kembali Ke Login',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 24.0),
                          SvgPicture.asset(
                            'assets/vectors/frame_login.svg',
                            width: Get.width - 40.0,
                          ),
                          SizedBox(height: 24.0),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
