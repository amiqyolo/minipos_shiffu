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
        PaymentMethodButton(
          label: "Qris",
          isSelected: _selectedMethod == 0,
          onTap: () => setState(() => _selectedMethod = 0),
        ),
        PaymentMethodButton(
          label: "Transfer",
          isSelected: _selectedMethod == 1,
          onTap: () => setState(() => _selectedMethod = 1),
        ),
        PaymentMethodButton(
          label: "Tunai",
          isSelected: _selectedMethod == 2,
          onTap: () => setState(() => _selectedMethod = 2),
        ),
      ],
    );
  }
}