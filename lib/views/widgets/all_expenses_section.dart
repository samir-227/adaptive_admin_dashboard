import 'package:adaptive_admin_dashboard/core/utls/app_images.dart';
import 'package:adaptive_admin_dashboard/views/widgets/all_expeneses_header.dart';
import 'package:adaptive_admin_dashboard/views/widgets/all_expeneses_item_header.dart';
import 'package:flutter/material.dart';

class AllExpeneses extends StatelessWidget {
  const AllExpeneses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            AllExpenesesHeader(),
            SizedBox(
              height: 24,
            ),
            AllExpenesesItemHeader(image: ImagesAssets.imageBalance)
          ],
        ),
      ),
    );
  }
}
