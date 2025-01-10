import 'package:adaptive_admin_dashboard/core/models/user_info_model.dart';
import 'package:adaptive_admin_dashboard/core/utls/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfo});
  final UserInfoModel userInfo;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(userInfo.image),
        title: Text(
          userInfo.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          userInfo.subTitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
