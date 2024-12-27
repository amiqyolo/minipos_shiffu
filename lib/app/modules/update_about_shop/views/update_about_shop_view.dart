import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/update_about_shop_controller.dart';

class UpdateAboutShopView extends GetView<UpdateAboutShopController> {
  const UpdateAboutShopView({super.key});
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Color(0xFF4F62C1),
      ),
      child: Scaffold(
        backgroundColor: Color(0xFF4F62C1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 0),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        'assets/vectors/icon_shop.svg',
                        width: 100.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nama Toko',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        TextField(
                          autofocus: false,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'SINAR JAYA',
                            enabled: false,
                            hintStyle: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xFF667080),
                              fontWeight: FontWeight.w400,
                            ),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF667080),
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'No Telepon',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        TextField(
                          autofocus: false,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: '085764867297',
                            enabled: false,
                            hintStyle: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xFF667080),
                              fontWeight: FontWeight.w400,
                            ),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF667080),
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        TextField(
                          autofocus: false,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'sinarjaya@gmail.com',
                            enabled: false,
                            hintStyle: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xFF667080),
                              fontWeight: FontWeight.w400,
                            ),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF667080),
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        TextField(
                          autofocus: false,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                controller.isPassVisibility.value =
                                !controller.isPassVisibility.value;
                              },
                              icon: Obx(
                                    () => controller.isPassVisibility.value
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: '12345',
                            // enabled: false,
                            hintStyle: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xFF667080),
                              fontWeight: FontWeight.w400,
                            ),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF667080),
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kode Toko',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        TextField(
                          autofocus: false,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: '762g2h6gvghf',
                            enabled: false,
                            hintStyle: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xFF667080),
                              fontWeight: FontWeight.w400,
                            ),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF667080),
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Alamat',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        TextField(
                          autofocus: false,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText:
                            'Jl. Ampel Gading Raya, Ngijo, Kec. Gn. Pati, Kota Semarang, Jawa Tengah 50228',
                            enabled: false,
                            hintStyle: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xFF667080),
                              fontWeight: FontWeight.w400,
                            ),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF667080),
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF6C7CCB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding:
                        EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 12.0),
                      ),
                      onPressed: () {
                      },
                      child: Text(
                        'SIMPAN',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              SvgPicture.asset('assets/vectors/dashboard_frame_no_logo.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
