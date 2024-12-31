import 'package:flutter/material.dart';

class PaymentPrintButton extends StatelessWidget {
  final bool isPaid;

  const PaymentPrintButton({required this.isPaid, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: isPaid ? () {} : null, // Tombol disabled jika belum lunas
      icon: Icon(
        Icons.print,
        color: isPaid ? Colors.white : Color(0xFF4F62C1),
      ),
      label: Text(
        'Cetak Struk Pembayaran',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: isPaid ? Colors.white : Color(0xFF4F62C1),
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        backgroundColor: isPaid ? Color(0xFF4F62C1) : Color(0xFFC4CBEA),
        // foregroundColor: isPaid ? Colors.white : Color(0xFFC4CBEA),
      ),
    );
  }
}
