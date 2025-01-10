import 'package:adaptive_admin_dashboard/core/utls/app_styles.dart';
import 'package:adaptive_admin_dashboard/views/widgets/latest_transaction_list_view.dart';
import 'package:flutter/material.dart';

class LatestTransactionWidget extends StatelessWidget {
  const LatestTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        const LatestTransactionListView(),
      ],
    );
  }
}
