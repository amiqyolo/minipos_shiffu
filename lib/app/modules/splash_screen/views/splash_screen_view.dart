import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Color(0xFFF4FAFA),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/vectors/minipos_logo.svg',
                      fit: BoxFit.cover,
                      width: 176,
                    ),
                    Text(
                      'MINIPOS',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF4F62C1),
                      ),
                    ),
                    Text(
                      'BY sHIFFU MEDIA Teknologi',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF4F62C1),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/vectors/frame_item.svg'),
                    Row(
                      children: [
                        Transform.rotate(
                          angle: 3.141592653589793238462643383279502884197,
                          child: SvgPicture.asset(
                            'assets/vectors/frame_item.svg',
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/vectors/frame_item.svg',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: SvgPicture.asset(
                  'assets/vectors/frame_item.svg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
