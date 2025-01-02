import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../widgets/sale_purchase_item_card.dart';
import '../controllers/sale_payment_summary_controller.dart';

class SalePaymentSummaryView extends GetView<SalePaymentSummaryController> {
  const SalePaymentSummaryView({super.key});

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
                        'PENJUALAN',
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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Rincian Pembayaran',
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
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                _buildDetailRow(
                                  Icons.receipt_long,
                                  'Nomor Invoice',
                                  '#12345678910',
                                ),
                                const SizedBox(height: 6.0),
                                _buildDetailRow(
                                  Icons.calendar_today,
                                  'Tanggal Pembelian',
                                  '10 Desember 2024, 17:28 WIB',
                                ),
                                const SizedBox(height: 6.0),
                                _buildDetailRow(
                                  Icons.account_balance_wallet,
                                  'Metode Pembayaran',
                                  'BCA Virtual Account',
                                ),
                                SizedBox(height: 16.0),
                                _buildPriceRow(
                                    'Subtotal Harga Barang', 'Rp 100.000'),
                                _buildPriceRow('Diskon Barang', '-Rp 10.000'),
                                const Divider(height: 24, thickness: 1),
                                _buildPriceRow('Total Belanja', 'Rp 90.000',
                                    isBold: true),
                              ],
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: SvgPicture.asset(
                                'assets/vectors/frame_item_card.svg',
                                width: 48.0,
                                height: 48.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      const Text(
                        'Detail Pembelian',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 6.0),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return SalePurchaseItemCard(
                            onClick: () {},
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

  Widget _buildDetailRow(IconData icon, String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12.0,
            color: Color(0xFF1F2933),
          ),
        ),
        SizedBox(height: 4.0),
        Row(
          children: [
            Icon(
              icon,
              size: 16.0,
              color: Color(0xFF4F62C1),
            ),
            const SizedBox(width: 8),
            Text(
              value,
              style: TextStyle(
                color: Color(0xFF1F2933),
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPriceRow(String label, String price, {bool isBold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontWeight: isBold ? FontWeight.bold : null),
        ),
        Text(
          price,
          style: TextStyle(fontWeight: isBold ? FontWeight.bold : null),
        ),
      ],
    );
  }
}
