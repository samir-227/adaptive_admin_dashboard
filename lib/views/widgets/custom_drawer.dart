import 'package:adaptive_admin_dashboard/core/models/drawer_item_model.dart';
import 'package:adaptive_admin_dashboard/core/models/user_info_model.dart';
import 'package:adaptive_admin_dashboard/core/utls/app_images.dart';
import 'package:adaptive_admin_dashboard/views/widgets/active_and_inactive_item.dart';
import 'package:adaptive_admin_dashboard/views/widgets/drewer_list_view.dart';
import 'package:adaptive_admin_dashboard/views/widgets/user_info_listTile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfo: UserInfoModel(
                image: ImagesAssets.imageAvatar3,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com',
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const DrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Setting system',
                      image: ImagesAssets.imageSettings),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Logout account', image: ImagesAssets.imageLogout),
                ),
                const SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
