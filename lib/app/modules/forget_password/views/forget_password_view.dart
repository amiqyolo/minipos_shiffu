import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/forget_password_controller.dart';

class ForgetPasswordView extends GetView<ForgetPasswordController> {
  const ForgetPasswordView({super.key});

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
                          SizedBox(height: 24.0),
                          Column(
                            children: [
                              Text(
                                'Lupa Password',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF4F62C1),
                                ),
                              ),
                              Text(
                                'Silahkan masuk untuk mengakses akun Anda',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF4F62C1),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Email',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF4F62C1),
                                      ),
                                    ),
                                    SizedBox(height: 8.0),
                                    TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Masukkan Email Kamu',
                                        hintStyle: TextStyle(
                                          fontSize: 14.0,
                                          color: Color(0xFF6D6D85),
                                          fontWeight: FontWeight.w400,
                                        ),
                                        border: const OutlineInputBorder(),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30.0),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF4F62C1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    padding: EdgeInsets.fromLTRB(
                                        20.0, 12.0, 20.0, 12.0),
                                  ),
                                  onPressed: () {
                                    Get.toNamed(Routes
                                        .FORGET_PASSWORD_OTP_VERIFICATION);
                                  },
                                  child: Text(
                                    'Kirim OTP',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Belum punya akun?',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                    SizedBox(width: 8.0),
                                    InkWell(
                                      onTap: () {},
                                      child: Text(
                                        'Daftar disini',
                                        style: TextStyle(
                                          color: Color(0xFF4F62C1),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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
