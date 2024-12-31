import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentStatusWidget extends StatelessWidget {
  final bool isPaid;

  const PaymentStatusWidget({required this.isPaid, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildStatus(
          pathIcon: 'shield_tick_enable.svg',
          label: 'Lunas',
          isActive: isPaid,
        ),
        _buildStatus(
          pathIcon: 'shield_cross_disable.svg',
          label: 'Belum Lunas',
          isActive: !isPaid,
        ),
      ],
    );
  }

  Widget _buildStatus({
    required String pathIcon,
    required String label,
    required bool isActive,
  }) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? Color(0xFF4F62C1) : Color(0xFFFFFFFF),
          border: Border.all(color: isActive ? Color(0xFFFFFFFF) : Color(0xFF4F62C1)),
          borderRadius: label.contains('Lunas') ? BorderRadius.only(
            topLeft: Radius.circular(6.0),
            bottomLeft: Radius.circular(6.0),
          ) : BorderRadius.only(
            topRight: Radius.circular(6.0),
            bottomRight: Radius.circular(6.0),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/vectors/$pathIcon',
              height: 24.0,
              width: 24.0,
              colorFilter: ColorFilter.mode(
                isActive ? Color(0xFF4F62C1) : Color(0xFFFFFFF),
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: isActive ? Color(0xFFFFFFFF) : Color(0xFF4F62C1),
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
