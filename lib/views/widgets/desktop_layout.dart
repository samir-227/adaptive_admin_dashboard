import 'package:adaptive_admin_dashboard/views/widgets/all_expenses_and_quick_invoice.dart';
import 'package:adaptive_admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:adaptive_admin_dashboard/views/widgets/income_section.dart';
import 'package:adaptive_admin_dashboard/views/widgets/my_card_and_transaction_history_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: AllExpensesAndQuickInvoiceSection(),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 24),
                          MyCardAndTransactionHistorySection(),
                          SizedBox(height: 24),
                          Expanded(
                            child: IncomeSection(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
