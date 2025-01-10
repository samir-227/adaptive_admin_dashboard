import 'package:adaptive_admin_dashboard/core/models/user_info_model.dart';
import 'package:adaptive_admin_dashboard/core/utls/app_images.dart';
import 'package:adaptive_admin_dashboard/views/widgets/user_info_listTile.dart';
import 'package:flutter/material.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const List<UserInfoModel> items = [
    UserInfoModel(
        image: ImagesAssets.imageAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: ImagesAssets.imageAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: ImagesAssets.imageAvatar3,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(
                  child: UserInfoListTile(
                    userInfo: e,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
