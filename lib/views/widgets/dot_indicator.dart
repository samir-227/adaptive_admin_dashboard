import 'package:adaptive_admin_dashboard/views/widgets/custom_dot_indicator.dart';
import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CustomDotIndicator(isActive: index == currentPageIndex),
              )),
    );
  }
}
