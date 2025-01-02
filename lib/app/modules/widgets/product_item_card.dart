import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductItemCard extends StatelessWidget {
  final VoidCallback onClick;

  ProductItemCard({super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      borderRadius: BorderRadius.circular(10.0),
      splashColor: Color(0xFF4F62C1),
      child: Card(
        color: Color.fromRGBO(255, 255, 255, 1),
        elevation: .2,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(
              width: 1,
              color: Color.fromRGBO(0, 0, 0, .1),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 14.0,
            vertical: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image placeholder
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF667080), width: 2.0),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
              // Divider
              Divider(
                color: Color(0xFF6C7CCB),
                thickness: 1.0,
              ),
              SizedBox(height: 4.0),
              // Stock and prices
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
