import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    this.padding,
    required this.child,
  });
  final double? padding;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(padding: EdgeInsets.all(padding ?? 20), child: child),
    );
  }
}
