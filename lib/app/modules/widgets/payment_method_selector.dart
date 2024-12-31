import 'package:flutter/material.dart';

import 'payment_method_button.dart';

class PaymentMethodSelector extends StatefulWidget {
  @override
  _PaymentMethodSelectorState createState() => _PaymentMethodSelectorState();
}

class _PaymentMethodSelectorState extends State<PaymentMethodSelector> {
  int _selectedMethod = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: PaymentMethodButton(
            label: "Qris",
            fileVector: 'qris.svg',
            isSelected: _selectedMethod == 0,
            onTap: () => setState(() => _selectedMethod = 0),
          ),
        ),
        SizedBox(width: 14.0),
        Expanded(
          child: PaymentMethodButton(
            label: "Transfer",
            fileVector: 'tranfers.svg',
            isSelected: _selectedMethod == 1,
            onTap: () => setState(() => _selectedMethod = 1),
          ),
        ),
        SizedBox(width: 14.0),
        Expanded(
          child: PaymentMethodButton(
            label: "Tunai",
            fileVector: 'moneys.svg',
            isSelected: _selectedMethod == 2,
            onTap: () => setState(() => _selectedMethod = 2),
          ),
        ),
      ],
    );
  }
}