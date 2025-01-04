import 'package:adaptive_admin_dashboard/views/widgets/adaptive_layout_widget.dart';
import 'package:adaptive_admin_dashboard/views/widgets/desktop_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => SizedBox(),
          tabletLayout: (context) => SizedBox(),
          desktopLayout: (context) => DesktopLayout()),
    );
  }
}
