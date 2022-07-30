import 'package:drones/colors.dart';
import 'package:flutter/material.dart';

TextStyle largeText({Color? color}) {
  return TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 36,
    fontStyle: FontStyle.normal,
    color: color ?? AppColors.blackColor,
  );
}

TextStyle headerText() {
  return const TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 22,
    fontStyle: FontStyle.normal,
    color: AppColors.blackColor,
  );
}

TextStyle bigText({double? size}) {
  return TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: size ?? 18,
    fontStyle: FontStyle.normal,
    color: AppColors.blackColor,
  );
}

TextStyle mediumText({double? size, Color? color}) {
  return TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: size ?? 18,
    fontStyle: FontStyle.normal,
    color: color ?? AppColors.textColor,
  );
}

// TextStyle smallText() {
//   return const TextStyle( 
//     fontWeight: FontWeight.w400,
//     fontSize: 14,
//     fontStyle: FontStyle.normal,
//     color: AppColors.blackColor,
//   );
// }

// TextStyle tinyText() {
//   return const TextStyle( 
//     fontWeight: FontWeight.w400,
//     fontSize: 12,
//     fontStyle: FontStyle.normal,
//     color: AppColors.blackColor,
//   );
// }