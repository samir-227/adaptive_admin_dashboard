import 'package:adaptive_admin_dashboard/views/widgets/custom_bottom.dart';
import 'package:adaptive_admin_dashboard/views/widgets/titel_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  title: 'Customer name', hint: 'Type Customer name'),
            ),
            SizedBox(
              width: 18,
            ),
            Expanded(
              child: TitleTextField(
                  title: 'Customer Email', hint: 'Type Customer Email'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  title: 'Item name', hint: 'Type Customer name'),
            ),
            SizedBox(
              width: 18,
            ),
            Expanded(
              child: TitleTextField(title: 'Item Mount', hint: 'USD'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomBottom(
                    text: 'Add more details',
                    textColor: Color(0xFF4EB7F2),
                    backgroundColor: Colors.white)),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomBottom(
                text: 'Send Money',
                textColor: Colors.white,
                backgroundColor: Color(0xFF4EB7F2),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
