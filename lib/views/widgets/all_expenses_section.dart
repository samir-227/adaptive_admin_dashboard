import 'package:adaptive_admin_dashboard/views/widgets/all_expeneses_header.dart';
import 'package:adaptive_admin_dashboard/views/widgets/all_expenses_list_view.dart';
import 'package:adaptive_admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader.AllExpensesHeader(),
          SizedBox(
            height: 24,
          ),
          AllExpensesListView(),
        ],
      ),
    );
  }
}
