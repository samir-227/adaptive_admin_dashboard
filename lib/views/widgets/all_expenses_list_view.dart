import 'package:adaptive_admin_dashboard/core/models/all_expeneses_item_model.dart';
import 'package:adaptive_admin_dashboard/core/utls/app_images.dart';
import 'package:adaptive_admin_dashboard/views/widgets/all_expeneses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

List<AllExpensesItemModel> items = const [
  AllExpensesItemModel(
      image: ImagesAssets.imageBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129'),
  AllExpensesItemModel(
      image: ImagesAssets.imageIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129'),
  AllExpensesItemModel(
      image: ImagesAssets.imageExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129'),
];
int selectedIndex = 0;

class _AllExpensesListViewState extends State<AllExpensesListView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpensesItem(
                  allExpensesItemModel: item,
                  isSelected: selectedIndex == index),
            ),
          ),
        );
      }).toList(),
    );
  }
}
