import 'package:adaptive_admin_dashboard/core/models/all_expeneses_item_model.dart';
import 'package:adaptive_admin_dashboard/core/utls/app_styles.dart';

import 'package:adaptive_admin_dashboard/views/widgets/all_expeneses_item_header.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpenesesItemModel});
  final AllExpenesesItemModel allExpenesesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: Color(0xFFF1F1F1))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpenesesItemHeader(
              image: allExpenesesItemModel.image,
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              allExpenesesItemModel.title,
              style: AppStyles.styleSemiBold16(context),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              allExpenesesItemModel.date,
              style: AppStyles.styleRegular14(context),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              allExpenesesItemModel.price,
              style: AppStyles.styleSemiBold24(context),
            )
          ],
        ),
      ),
    );
  }
}
