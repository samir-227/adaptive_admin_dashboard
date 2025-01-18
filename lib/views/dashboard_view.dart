import 'package:adaptive_admin_dashboard/views/widgets/adaptive_layout_widget.dart';
import 'package:adaptive_admin_dashboard/views/widgets/dashboard_mobile_layout.dart';
import 'package:adaptive_admin_dashboard/views/widgets/dashboard_tablet_layout.dart';
import 'package:adaptive_admin_dashboard/views/widgets/desktop_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashboardMobileLayout(),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DashboardDesktopLayout()),
    );
  }
}
