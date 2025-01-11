import 'package:adaptive_admin_dashboard/core/utls/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: buildBorder(),
        focusedBorder: buildBorder(),
        enabledBorder: buildBorder(),
        filled: true,
        fillColor: const Color(0xFFFAFAFA),
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(context).copyWith(
          color: const Color(0xFFAAAAAA),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
      borderSide: BorderSide(
        color: Color(0xFFFAFAFA),
      ),
    );
  }
}
