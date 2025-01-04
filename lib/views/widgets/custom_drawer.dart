import 'package:adaptive_admin_dashboard/core/models/user_info_model.dart';
import 'package:adaptive_admin_dashboard/core/utls/app_images.dart';
import 'package:adaptive_admin_dashboard/views/widgets/user_info_listTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
              userInfo: UserInfoModel(
            image: SvgPicture.asset(ImagesAssets.imageAvatar3),
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
          ))
        ],
      ),
    );
  }
}
