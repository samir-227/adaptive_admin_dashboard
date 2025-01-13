import 'package:adaptive_admin_dashboard/core/models/transaction_model.dart';
import 'package:adaptive_admin_dashboard/views/widgets/transaction_history_item.dart';
import 'package:flutter/material.dart';

class TransactionItemListView extends StatelessWidget {
  const TransactionItemListView({super.key});
  static const items = [
    TransactionItemModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: true),
    TransactionItemModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: r'$2000',
        isWithdrawal: false),
    TransactionItemModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: r'$20,129',
        isWithdrawal: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((e) => TransactionHistoryItem(transactionItemModel: e))
          .toList(),
    );
    // ListView.builder(
    //   itemCount: items.length,
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     return Padding(
    //       padding: const EdgeInsets.only(bottom: 12),
    //       child: TransactionHistoryItem(transactionItemModel: items[index]),
    //     );
    //   },
    // );
  }
}
