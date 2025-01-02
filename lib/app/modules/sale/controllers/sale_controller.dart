import 'package:get/get.dart';

class SaleController extends GetxController {
  final List<Map<String, dynamic>> invoiceData = [
    {
      'date': '10 Desember 2024',
      'invoices': [
        {'number': '#12345678910', 'time': '17:28 WIB'},
        {'number': '#12345678910', 'time': '17:28 WIB'},
      ],
    },
    {
      'date': '9 Desember 2024',
      'invoices': [
        {'number': '#12345678910', 'time': '17:28 WIB'},
      ],
    },
    {
      'date': '8 Desember 2024',
      'invoices': [
        {'number': '#12345678910', 'time': '17:28 WIB'},
        {'number': '#12345678910', 'time': '17:28 WIB'},
      ],
    },
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
