import 'package:adaptive_admin_dashboard/core/models/income_model.dart';
import 'package:adaptive_admin_dashboard/views/widgets/income_item.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeModel(
        color: Color(0xFF208BC7), title: 'Design service', amount: '%40'),
    IncomeModel(
        color: Color(0xFF4DB7F2), title: 'Design product', amount: '%25'),
    IncomeModel(
        color: Color(0xFF064060), title: 'Product royalti', amount: '%20'),
    IncomeModel(color: Color(0xFFE2DECD), title: 'Other', amount: '%22'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: items
            .map(
              (e) => IncomeItem(incomeModel: e),
            )
            .toList());
    // ListView.builder(
    //     shrinkWrap: true,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return Expanded(child: IncomeItem(incomeModel: items[index]));
    //     });
  }
}
