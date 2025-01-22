import 'package:adaptive_admin_dashboard/views/widgets/income_chart.dart';
import 'package:adaptive_admin_dashboard/views/widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= 1200 && width < 1674
        ? SizedBox()
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 3, child: IncomeDetails()),
            ],
          );
  }
}
