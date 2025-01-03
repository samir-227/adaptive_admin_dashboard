import 'package:adaptive_admin_dashboard/views/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdaptiveAdminDashBoard());
}

class AdaptiveAdminDashBoard extends StatelessWidget {
  const AdaptiveAdminDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashBoardView(),
    );
  }
}
