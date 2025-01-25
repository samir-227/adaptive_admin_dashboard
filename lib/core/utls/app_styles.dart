import 'package:adaptive_admin_dashboard/core/utls/size_config.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, baseFontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, baseFontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, baseFontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, baseFontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, baseFontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, baseFontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
}

double getScaleFactor(BuildContext context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}

double getResponsiveFontSize(BuildContext context,
    {required double baseFontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = baseFontSize * scaleFactor;
  double lowerLimit = baseFontSize * .8;
  double upperLimit = baseFontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}
