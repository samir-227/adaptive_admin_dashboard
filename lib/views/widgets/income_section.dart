import 'package:adaptive_admin_dashboard/views/widgets/income_chart.dart';
import 'package:adaptive_admin_dashboard/views/widgets/income_section_header.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Expanded(child: IncomeChart())],
    );
  }
}
