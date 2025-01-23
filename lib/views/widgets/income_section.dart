import 'package:adaptive_admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:adaptive_admin_dashboard/views/widgets/income_section_body.dart';
import 'package:adaptive_admin_dashboard/views/widgets/income_section_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          SizedBox(
            height: 16,
          ),
          IncomeSectionBody()
        ],
      ),
    );
  }
}
