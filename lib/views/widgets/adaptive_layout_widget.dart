import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        if (Constraints.maxWidth < 600) {
          return mobileLayout(context);
        } else if (Constraints.maxWidth > 900) {
          return desktopLayout(context);
        } else {
          return tabletLayout(context);
        }
      },
    );
  }
}
