import 'package:adaptive_admin_dashboard/core/models/all_expeneses_item_model.dart';
import 'package:adaptive_admin_dashboard/views/widgets/active_and_inactive_expensses_item.dart';

import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key,
      required this.allExpensesItemModel,
      required this.isSelected});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveExpensesItem(allExpensesItemModel: allExpensesItemModel)
        : InActiveExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
