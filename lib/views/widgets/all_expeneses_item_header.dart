import 'package:adaptive_admin_dashboard/core/models/all_expeneses_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpenesesItemHeader extends StatelessWidget {
  const AllExpenesesItemHeader({
    super.key,
    required this.image,
  });

  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Color(0xFFF1F1F1), shape: BoxShape.circle),
          width: 60,
          height: 60,
          child: Center(
            child: SvgPicture.asset(
              image,
            ),
          ),
        ),
        const SizedBox(
          width: 56,
        ),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Color(0xFF064061),
        )
      ],
    );
  }
}
