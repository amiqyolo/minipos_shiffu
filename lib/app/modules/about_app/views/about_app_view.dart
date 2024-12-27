import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controllers/about_app_controller.dart';

class AboutAppView extends GetView<AboutAppController> {
  const AboutAppView({super.key});

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
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                  color: Color(0xFF4F62C1),
                ),
                padding: EdgeInsets.fromLTRB(0, 16.0, 0, 16.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Transform.rotate(
                      angle: -0.785398,
                      child: SvgPicture.asset(
                        'assets/vectors/frame_item.svg',
                        width: 48.0,
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/vectors/minipos_logo.svg',
                                colorFilter: ColorFilter.mode(
                                    Colors.white, BlendMode.srcIn),
                                width: 40.0,
                              ),
                              SizedBox(width: 6.0),
                              Text(
                                'MINIPOS',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            'BY SHIFFUMEDIATEK',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 14.0),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            child: Image.asset('assets/images/shiffu_logo.png'),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: SvgPicture.asset(
                        'assets/vectors/dashboard_frame_no_logo.svg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
              ),
              Transform.rotate(
                angle: -0.785398,
                child: SvgPicture.asset(
                  'assets/vectors/frame_item.svg',
                  width: 48.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 20.0),
                child: Column(
                  children: [
                    ExpansionTile(
                      title: Text('Tentang Kami'),
                      trailing: SvgPicture.asset(
                        'assets/vectors/icon_tile.svg',
                        width: 24.0,
                      ),
                      collapsedShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          side: BorderSide(
                            color: Color(0xFFD9D9D9),
                            width: 1.0,
                          )),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          side: BorderSide(
                            color: Color(0xFFD9D9D9),
                            width: 1.0,
                          )),
                      childrenPadding: EdgeInsets.all(20.0),
                      children: [
                        Image.asset(
                          'assets/images/shiffu_logo.png',
                          width: 150,
                        ),
                        Text(
                          'Partner Terbaik Menemukan Solusi Berbasis Teknologi Melalui teknologi kami siap membantu agar bisnis anda lebih efisien, lebih termonitor, lebih banyak menarik pelanggan, dan tentunya lebih bertumbuh lagi',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    ExpansionTile(
                      title: Text('Hubungi Kami'),
                      collapsedShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          side: BorderSide(
                            color: Color(0xFFD9D9D9),
                            width: 1.0,
                          )),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          side: BorderSide(
                            color: Color(0xFFD9D9D9),
                            width: 1.0,
                          )),
                      childrenPadding: EdgeInsets.all(20.0),
                      trailing: SvgPicture.asset(
                        'assets/vectors/icon_tile.svg',
                        width: 24.0,
                      ),
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dapatkan solusi berbasis teknologi untuk semua kebutuhan di usaha anda.  Ceritakan masalah di perusahaan anda, berangkat dari rasa peduli kami, kami bantu carikan solusi berteknologi.  Chat kami via WhatsApp sekarang.',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        ElevatedButton.icon(
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Color(0xFF4F62C1)),
                            shape:
                                WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            )),
                          ),
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 14.0,
                          ),
                          iconAlignment: IconAlignment.end,
                          onPressed: () {},
                          label: Text(
                            'Hubungi Kami',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    ExpansionTile(
                      title: Text('Developer Setting Updated'),
                      collapsedShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          side: BorderSide(
                            color: Color(0xFFD9D9D9),
                            width: 1.0,
                          )),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          side: BorderSide(
                            color: Color(0xFFD9D9D9),
                            width: 1.0,
                          )),
                      childrenPadding: EdgeInsets.all(20.0),
                      trailing: SvgPicture.asset(
                        'assets/vectors/icon_tile.svg',
                        width: 24.0,
                      ),
                      children: [],
                    ),
                  ],
                ),
              ),
              Transform.rotate(
                angle: -3.9,
                child: SvgPicture.asset(
                  'assets/vectors/frame_item.svg',
                  width: 48.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
