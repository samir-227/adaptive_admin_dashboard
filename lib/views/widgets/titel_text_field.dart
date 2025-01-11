import 'package:adaptive_admin_dashboard/core/utls/app_styles.dart';
import 'package:adaptive_admin_dashboard/views/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(hint: hint)
      ],
    );
  }
}
