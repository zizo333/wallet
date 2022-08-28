import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet/core/utils/app_colors.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final bool isLandScape;

  const TitleWidget({Key? key, required this.title, required this.isLandScape}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 20.h,
              width: 4.w,
              color: AppColors.primary,
            ),
            SizedBox(width: 10.w),
            Text(
              title,
              style: TextStyle(
                fontSize:isLandScape ? 10.sp : 12.sp,
                color: AppColors.black,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
        SizedBox(height: 15.5.h),
        Container(height: 1.h, width: double.infinity, color: AppColors.divider,),
      ],
    );
  }
}
