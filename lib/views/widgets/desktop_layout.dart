import 'package:adaptive_admin_dashboard/views/widgets/all_expenses_section.dart';
import 'package:adaptive_admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:adaptive_admin_dashboard/views/widgets/quick_invoice_section.dart';
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
          child: Column(
            children: [
              AllExpenses(),
              SizedBox(
                height: 24,
              ),
              QuickInvoiceSection(),
            ],
          ),
        ),
      ],
    );
  }
}
