import 'package:adaptive_admin_dashboard/core/models/drawer_item_model.dart';
import 'package:adaptive_admin_dashboard/views/widgets/active_and_inactive_item.dart';
import 'package:flutter/material.dart';

class DrawerListViewItem extends StatelessWidget {
  const DrawerListViewItem(
      {super.key, required this.isActive, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
