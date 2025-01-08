import 'package:adaptive_admin_dashboard/core/utls/app_styles.dart';
import 'package:flutter/material.dart';

class AllExpenesesHeader extends StatelessWidget {
  const AllExpenesesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expeneses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: const Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16(context),
              ),
              const SizedBox(
                width: 18,
              ),
              const Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Color(0xFF064061),
              ),
            ],
          ),
        )
      ],
    );
  }
}
