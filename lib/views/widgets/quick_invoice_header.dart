import 'package:adaptive_admin_dashboard/core/utls/app_styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
          decoration: const BoxDecoration(
              color: Color(0xFFF1F1F1), shape: BoxShape.circle),
          width: 60,
          height: 60,
          child: const Center(
              child: Icon(
            Icons.add,
            color: Color(0xFF4EB7F2),
          )),
        ),
      ],
    );
  }
}
