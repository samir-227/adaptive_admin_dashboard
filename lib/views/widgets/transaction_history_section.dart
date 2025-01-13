import 'package:adaptive_admin_dashboard/core/models/transaction_model.dart';
import 'package:adaptive_admin_dashboard/core/utls/app_styles.dart';
import 'package:adaptive_admin_dashboard/views/widgets/transaction_history_header.dart';
import 'package:adaptive_admin_dashboard/views/widgets/transaction_history_item.dart';
import 'package:flutter/material.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
        TransactionHistoryItem(
          transactionItemModel: TransactionItemModel(
              title: 'Cash Withdrawal',
              date: '13 Apr, 2022 ',
              amount: r'$20,129',
              isWithdrawal: true),
        ),
      ],
    );
  }
}
