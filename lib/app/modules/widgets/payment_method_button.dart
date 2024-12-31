import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethodButton extends StatelessWidget {
  final String label;
  final String fileVector;
  final bool isSelected;
  final VoidCallback onTap;

  const PaymentMethodButton({
    required this.label,
    required this.fileVector,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF4F62C1) : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.blue),
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              'assets/vectors/$fileVector',
              width: 24.0,
              height: 24.0,
              colorFilter: isSelected
                  ? ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    )
                  : ColorFilter.mode(
                      Color(0xFF4F62C1),
                      BlendMode.srcIn,
                    ),
            ),
            SizedBox(height: 6.0),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : Color(0xFF4F62C1),
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
