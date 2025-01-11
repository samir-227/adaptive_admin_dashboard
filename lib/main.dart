import 'package:adaptive_admin_dashboard/views/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    // DevicePreview(
    //   enabled: true,
    //   tools: const [
    //     ...DevicePreview.defaultTools,
    //   ],
    //   builder: (context) => const
    //   AdaptiveAdminDashBoard(), // Wrap your app
    // ),
    const AdaptiveAdminDashBoard(),
  );
}

class AdaptiveAdminDashBoard extends StatelessWidget {
  const AdaptiveAdminDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}
