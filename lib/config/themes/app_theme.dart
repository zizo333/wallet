import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet/core/utils/app_colors.dart';
import 'package:wallet/core/utils/app_strings.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get light {
    return ThemeData(
      fontFamily: AppStrings.fontFamily,
      primaryColor: AppColors.primary,
      canvasColor: AppColors.backGround,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.backGround,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 17.sp,
          color: AppColors.black,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(AppColors.primary),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                5.r
              ),
            ),
          ),
          elevation: MaterialStateProperty.all<double>(3.h),
          shadowColor: MaterialStateProperty.all(AppColors.shadow),
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
              fontSize: 11.sp,
              color: AppColors.white,
            ),
          ),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: 11.h, horizontal: 24.w),
          ),
        ),
      ),
    );
  }
}
