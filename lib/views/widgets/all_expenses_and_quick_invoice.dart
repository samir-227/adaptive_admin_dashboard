import 'package:adaptive_admin_dashboard/views/widgets/all_expenses_section.dart';
import 'package:adaptive_admin_dashboard/views/widgets/quick_invoice_section.dart';
import 'package:flutter/cupertino.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(
            height: 24,
          ),
          QuickInvoiceSection()
        ],
      ),
    );
  }
}
