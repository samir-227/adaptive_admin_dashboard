import 'package:adaptive_admin_dashboard/views/widgets/all_expenses_and_quick_invoice.dart';
import 'package:adaptive_admin_dashboard/views/widgets/income_section.dart';
import 'package:adaptive_admin_dashboard/views/widgets/my_card_and_transaction_history_section.dart';
import 'package:flutter/material.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCardAndTransactionHistorySection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
