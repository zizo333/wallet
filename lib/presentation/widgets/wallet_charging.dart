import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet/core/utils/app_colors.dart';
import 'package:wallet/core/utils/app_strings.dart';
import 'package:wallet/data/models/balance.dart';

class WalletCharging extends StatelessWidget {
  final bool isLandScape;

  const WalletCharging({Key? key, required this.isLandScape,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height:isLandScape ? 330.h : 150.h,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            itemBuilder: (context, i) {
              final currentBalance = balances[i];
              return Container(
                width: 200.w,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical:isLandScape ? 24.h :  12.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: currentBalance.color,
                  gradient: LinearGradient(
                    colors: [
                      currentBalance.color.withOpacity(0.5),
                      currentBalance.color,
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.white.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(isLandScape ? 12.r : 8.r),
                        child: SvgPicture.asset(
                          currentBalance.image,
                          height:isLandScape ? 50.r : 20.r,
                          width: isLandScape ? 50.r : 20.r,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      currentBalance.title,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize:isLandScape ? 8.sp : 10.sp,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    currentBalance.price == null
                        ? Text(
                            AppStrings.thereIsNo,
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize:isLandScape ? 12.sp : 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : Row(
                            children: [
                              Text(
                                '${currentBalance.price!.toInt()} ',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize:isLandScape ? 12.sp : 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                AppStrings.sar,
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize:isLandScape ? 10.sp : 13.sp,
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              );
            },
            separatorBuilder: (_, __) {
              return SizedBox(width: 16.w);
            },
            itemCount: balances.length,
          ),
        ),
        SizedBox(height:isLandScape ? 30.h : 16.h),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(
              AppStrings.walletCharging,
            ),
          ),
        ),
      ],
    );
  }
}
