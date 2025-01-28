import 'package:adaptive_admin_dashboard/core/models/drawer_item_model.dart';
import 'package:adaptive_admin_dashboard/core/utls/app_images.dart';
import 'package:adaptive_admin_dashboard/views/widgets/drawer_list_view_item.dart';
import 'package:flutter/material.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({super.key});

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  final List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: ImagesAssets.imageDashboard),
    DrawerItemModel(
        title: 'My Transaction', image: ImagesAssets.imageMyTransactions),
    DrawerItemModel(title: 'Statistics', image: ImagesAssets.imageStatistics),
    DrawerItemModel(
        title: 'Wallet Account', image: ImagesAssets.imageWalletAccount),
    DrawerItemModel(
        title: 'My Investments', image: ImagesAssets.imageMyInvestments),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerListViewItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
      itemCount: items.length,
    );
  }
}
