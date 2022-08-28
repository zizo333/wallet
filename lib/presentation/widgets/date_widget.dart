import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet/core/utils/app_colors.dart';
import 'package:wallet/core/utils/app_strings.dart';

class DateWidget extends StatelessWidget {
  final String hintText;
  final bool isLandScape;

  const DateWidget({Key? key, required this.hintText, required this.isLandScape,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 16.w),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: Text(
              hintText,
              style: TextStyle(
                fontSize:isLandScape ? 9.sp : 11.sp,
                color: AppColors.black4,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 14.w),
          decoration: BoxDecoration(
            color: AppColors.button1,
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(5.r),
            ),
          ),
          child:  Center(
            child: Text(
              AppStrings.higri,
              style: TextStyle(
                fontSize: 11.sp,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
