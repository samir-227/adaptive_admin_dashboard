import 'package:adaptive_admin_dashboard/views/widgets/all_expenses_and_quick_invoice.dart';
import 'package:adaptive_admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
      ],
    );
  }
}
