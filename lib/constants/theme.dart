import 'package:dribbox_ui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static final ThemeData appTheme = ThemeData(
    textTheme: lightTextTheme,
  );

  static final TextTheme lightTextTheme = TextTheme(
    headline1: _headline1, //24px
    headline2: _headline2, //20px
    headline3: _headline3, //18px
    headline4: _headline4, //16px
    headline5: _headline5, //15px

    // headline6: _headline6, //20px
    // subtitle1: _subtitle1, //16px
    // subtitle2: _subtitle2, //13px
    // bodyText1: _bodyText1, //14px
    // bodyText2: _bodyText2, //14px //normal
    // button: _button, //14px
    caption: _caption, //12px
    // overline: _overline, //10px
  );

  static final TextStyle _headline1 = TextStyle(
    fontWeight: FontWeight.w700,
    color: AppColors.black,
    fontSize: 24.sp,
  );

  static final TextStyle _headline2 = TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.w400,
    fontSize: 20.sp,
  );

  static final TextStyle _headline3 = TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
  );

  static final TextStyle _headline4 = TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
  );

  static final TextStyle _headline5 = TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.bold,
    fontSize: 15.sp,
  );

  // static final TextStyle _headline6 = TextStyle(
  //   fontFamily: "Roboto",
  //   color: AppColors.textColor,
  //   fontWeight: FontWeight.w700,
  //   fontSize: 20.sp,
  // );

  // static final TextStyle _subtitle1 = TextStyle(
  //   fontFamily: "RedHatDisplay",
  //   color: AppColors.textColor,
  //   fontWeight: FontWeight.w500,
  //   fontSize: 16.sp,
  // );

  // static final TextStyle _subtitle2 = TextStyle(
  //   fontFamily: "RedHatDisplay",
  //   color: AppColors.textColor,
  //   fontWeight: FontWeight.w500,
  //   fontSize: 13.sp,
  // );

  // static final TextStyle _bodyText1 = TextStyle(
  //   fontFamily: "RedHatDisplay",
  //   color: AppColors.textColor,
  //   fontWeight: FontWeight.w700,
  //   fontSize: 14.sp,
  // );

  // static final TextStyle _bodyText2 = TextStyle(
  //   fontFamily: "RedHatDisplay",
  //   color: AppColors.textColor,
  //   fontWeight: FontWeight.w400,
  //   fontSize: 14.sp,
  // );

  static final TextStyle _caption = TextStyle(
    color: AppColors.grey,
    fontWeight: FontWeight.w500,
    fontSize: 12.sp,
  );
}
