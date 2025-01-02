import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controllers/product_detail_controller.dart';

class ProductDetailView extends GetView<ProductDetailController> {
  const ProductDetailView({super.key});

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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Rincian Product',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 6.0),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          border: Border.fromBorderSide(
                            BorderSide(
                              color: Color.fromRGBO(0, 0, 0, .15),
                              width: 1.0,
                            ),
                          ),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 20.0,
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Image placeholder
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xFF667080), width: 2.0),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Icon(
                                    Icons.image,
                                    color: Color(0xFF667080),
                                  ),
                                ),
                                const SizedBox(width: 16.0),
                                // Barcode and title
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Barcode
                                      Image.asset(
                                        'assets/images/barcode.png',
                                        height: 30.0,
                                      ),
                                      Text(
                                        "105495278012042301221",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF1F2933),
                                        ),
                                      ),
                                      SizedBox(height: 2.0),
                                      // Product title
                                      Text(
                                        "MINYAK GORENG",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF1F2933),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Decorative corner
                                Align(
                                  alignment: Alignment.topRight,
                                  child: SvgPicture.asset(
                                    'assets/vectors/frame_item_card.svg',
                                    width: 44.0,
                                    height: 44.0,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4.0),
                            Divider(
                              color: Color(0xFF6C7CCB),
                              thickness: 1.0,
                            ),
                            SizedBox(height: 4.0),
                            // Stock and prices
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Harga Modal :",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color(0xFF1F2933),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "Rp 10.000/Kg",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF1F2933),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Harga Jual :",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color(0xFF4F62C1),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "Rp 15.000/Kg",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF4F62C1),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.0),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Stok :",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Color(0xFF1F2933),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            "100 pcs",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF1F2933),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFF6C7CCB),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: Icon(
                                            Icons.create,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 6.0),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFFFF5768),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: Icon(
                                            Icons.restore_from_trash,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
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
