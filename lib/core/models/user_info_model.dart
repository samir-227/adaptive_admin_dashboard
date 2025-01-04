import 'package:flutter_svg/flutter_svg.dart';

class UserInfoModel {
  final String title, subTitle;
  final SvgPicture image;

  UserInfoModel(
      {required this.image, required this.title, required this.subTitle});
}
