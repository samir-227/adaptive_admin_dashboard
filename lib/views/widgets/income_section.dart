import 'package:adaptive_admin_dashboard/views/widgets/income_chart.dart';
import 'package:adaptive_admin_dashboard/views/widgets/income_details.dart';
import 'package:adaptive_admin_dashboard/views/widgets/income_section_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IncomeSectionHeader(),
        Expanded(
          child: Row(
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          ),
        )
      ],
    );
  }
}
