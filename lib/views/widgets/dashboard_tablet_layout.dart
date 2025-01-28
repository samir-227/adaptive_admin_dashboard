import 'package:adaptive_admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:adaptive_admin_dashboard/views/widgets/dashboard_mobile_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 3,
          child: DashboardMobileLayout(),
        ),
      ],
    );
  }
}
