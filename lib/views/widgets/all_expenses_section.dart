import 'package:adaptive_admin_dashboard/core/models/all_expeneses_item_model.dart';
import 'package:adaptive_admin_dashboard/core/utls/app_images.dart';
import 'package:adaptive_admin_dashboard/views/widgets/active_and_inactive_expensses_item.dart';
import 'package:adaptive_admin_dashboard/views/widgets/all_expeneses_header.dart';
import 'package:adaptive_admin_dashboard/views/widgets/all_expenses_list_view.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            AllExpensesHeader.AllExpensesHeader(),
            SizedBox(
              height: 24,
            ),
            AllExpensesListView(),
          ],
        ),
      ),
    );
  }
}
