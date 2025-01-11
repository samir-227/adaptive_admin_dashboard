import 'package:adaptive_admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:adaptive_admin_dashboard/views/widgets/latest_transaction_widget.dart';
import 'package:adaptive_admin_dashboard/views/widgets/quick_invoice_form.dart';
import 'package:adaptive_admin_dashboard/views/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransactionWidget(),
          Divider(
            height: 48,
            color: Color(0xFFF1F1F1),
          ),
          QuickInvoiceForm()
        ],
      ),
    );
  }
}
