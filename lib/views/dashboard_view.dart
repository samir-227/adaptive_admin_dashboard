import 'dart:developer';
import 'package:adaptive_admin_dashboard/core/utls/size_config.dart';
import 'package:adaptive_admin_dashboard/views/widgets/adaptive_layout_widget.dart';
import 'package:adaptive_admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:adaptive_admin_dashboard/views/widgets/dashboard_mobile_layout.dart';
import 'package:adaptive_admin_dashboard/views/widgets/dashboard_tablet_layout.dart';
import 'package:adaptive_admin_dashboard/views/widgets/desktop_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    log(MediaQuery.of(context).size.width.toString());
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      drawer: MediaQuery.of(context).size.width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
