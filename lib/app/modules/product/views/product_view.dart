import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../widgets/product_item_card.dart';
import '../controllers/product_controller.dart';

class ProductView extends GetView<ProductController> {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Color(0xFF4F62C1),
      ),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                    color: Color(0xFF4F62C1),
                  ),
                  padding: EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/vectors/minipos_logo.svg',
                            colorFilter:
                                ColorFilter.mode(Colors.white, BlendMode.srcIn),
                            width: 24.0,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'MINIPOS',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'PRODUCT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Cari nama produk atau kode produk",
                          hintStyle: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF64748B),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFF64748B),
                          ),
                          suffixIcon: Icon(
                            Icons.filter_list,
                            color: Color(0xFF64748B),
                          ),
                          filled: true,
                          fillColor: Color(0xFFF1F5F9),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return ProductItemCard(
                            onClick: () {
                              Get.toNamed(Routes.PRODUCT_DETAIL);
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
