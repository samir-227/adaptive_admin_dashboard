import 'package:adaptive_admin_dashboard/core/models/income_model.dart';
import 'package:adaptive_admin_dashboard/core/utls/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({super.key, required this.incomeModel});
  final IncomeModel incomeModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeModel.amount,
        style: AppStyles.styleRegular16(context),
      ),
    );
  }
}
