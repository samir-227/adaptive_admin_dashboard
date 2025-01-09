import 'package:adaptive_admin_dashboard/core/models/all_expeneses_item_model.dart';
import 'package:adaptive_admin_dashboard/core/utls/app_styles.dart';
import 'package:adaptive_admin_dashboard/views/widgets/all_expeneses_item_header.dart';
import 'package:flutter/material.dart';

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;
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
            AllExpensesItemHeader(
              image: allExpensesItemModel.image,
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              allExpensesItemModel.title,
              style: AppStyles.styleSemiBold16(context),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              allExpensesItemModel.date,
              style: AppStyles.styleRegular14(context),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              allExpensesItemModel.price,
              style: AppStyles.styleSemiBold24(context),
            )
          ],
        ),
      ),
    );
  }
}

class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFF4EB7F2),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: Color(0xFFF1F1F1))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              imageColor: Colors.white,
              backgroundImageColor:
                  Colors.white.withOpacity(0.10000000149011612),
              image: allExpensesItemModel.image,
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              allExpensesItemModel.title,
              style: AppStyles.styleSemiBold16(context)
                  .copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              allExpensesItemModel.date,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xFFFAFAFA)),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              allExpensesItemModel.price,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
