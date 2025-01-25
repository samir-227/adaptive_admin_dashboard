import 'package:adaptive_admin_dashboard/core/utls/app_images.dart';
import 'package:adaptive_admin_dashboard/core/utls/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    // return AspectRatio(
    //   aspectRatio: 420 / 215,
    //   child: Container(
    //     decoration: ShapeDecoration(
    //       image: const DecorationImage(
    //           fit: BoxFit.fill,
    //           image: AssetImage(ImagesAssets.imageCardBackground)),
    //       color: const Color(0xFF4EB7F2),
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(12),
    //       ),
    //     ),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.end,
    //       children: [
    //         ListTile(
    //           contentPadding:
    //               const EdgeInsets.only(left: 31, right: 42, top: 16),
    //           title: Text('Name card',
    //               style: AppStyles.styleRegular16(context).copyWith(
    //                 color: Colors.white,
    //               )),
    //           subtitle: Text(
    //             'Syah Bandi',
    //             style: AppStyles.styleMedium20(context),
    //           ),
    //           trailing: SvgPicture.asset(ImagesAssets.imageGallery),
    //         ),
    //         const Expanded(child: SizedBox()),
    //         Padding(
    //           padding: const EdgeInsets.only(right: 48 - 24),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.end,
    //             children: [
    //               Text(
    //                 '0918 8124 0042 8129',
    //                 style: AppStyles.styleSemiBold24(context).copyWith(
    //                   color: Colors.white,
    //                 ),
    //               ),
    //               Text(
    //                 '12/20 - 124',
    //                 style: AppStyles.styleRegular16(context)
    //                     .copyWith(color: Colors.white),
    //               ),
    //             ],
    //           ),
    //         ),
    //         const Flexible(
    //           child: SizedBox(
    //             height: 40 - 16,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return AspectRatio(
      aspectRatio: 420 / 213,
      child: Container(
        decoration: ShapeDecoration(
          color: const Color(0xFF4EB7F2),
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(ImagesAssets.imageCardBackground)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, right: 42, top: 16),
              title: Text(
                'Name Card',
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
              subtitle: Text(
                'Samir Medhat',
                style: AppStyles.styleMedium20(context)
                    .copyWith(color: Colors.white),
              ),
              trailing: SvgPicture.asset(ImagesAssets.imageGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 48 - 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold24(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.styleRegular16(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 40 - 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
