import 'package:adaptive_admin_dashboard/views/widgets/my_card_section.dart';
import 'package:adaptive_admin_dashboard/views/widgets/transaction_history_section.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransactionHistorySection()
        ],
      ),
    );
  }
}
