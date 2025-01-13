import 'package:adaptive_admin_dashboard/views/widgets/transaction_history_header.dart';
import 'package:flutter/material.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TransactionHistoryHeader()],
    );
  }
}
