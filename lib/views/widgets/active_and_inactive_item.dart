import 'package:adaptive_admin_dashboard/core/models/drawer_item_model.dart';
import 'package:adaptive_admin_dashboard/core/utls/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          drawerItemModel.title,
          style: AppStyles.styleRegular16(context),
        ),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          drawerItemModel.title,
          style: AppStyles.styleBold16(context),
        ),
      ),
      trailing: Container(
        width: 3.27,
        color: const Color(0xFF4EB7F2),
      ),
    );
  }
}
