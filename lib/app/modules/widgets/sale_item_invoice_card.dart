import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SaleItemInvoiceCard extends StatelessWidget {
  final Map<String, dynamic> data;
  final VoidCallback onTap;

  SaleItemInvoiceCard({
    super.key,
    required this.data,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Date Header
        Text(
          data['date'],
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 16.0),
        // Invoice List
        ...data['invoices'].map<Widget>((invoice) {
          return InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(4.0),
            enableFeedback: true,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                border: Border.all(
                  width: 1.0,
                  color: Color.fromRGBO(79, 98, 193, .5),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, .1),
                    blurRadius: 4.0,
                    offset: Offset(0.0, 2.0),
                  )
                ],
              ),
              margin: const EdgeInsets.only(bottom: 12.0),
              padding: EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nomor Invoice :",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF1F2933),
                          ),
                        ),
                        Text(
                          invoice['number'],
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1F2933),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Tanggal Pembelian :",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF1F2933),
                          ),
                        ),
                        Text(
                          "${data['date']}, ${invoice['time']}",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1F2933),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Placeholder for logo
                  SvgPicture.asset(
                    'assets/vectors/frame_item_card.svg',
                    height: 48.0,
                    width: 48.0,
                  ),
                ],
              ),
            ),
          );
        }).toList(),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
