import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet/core/helpers/helper_methods.dart';
import 'package:wallet/core/utils/app_colors.dart';
import 'package:wallet/core/utils/app_images.dart';
import 'package:wallet/core/utils/app_strings.dart';
import 'package:wallet/presentation/widgets/search_wallet_movements.dart';
import 'package:wallet/presentation/widgets/title_widget.dart';
import 'package:wallet/presentation/widgets/wallet_charging.dart';
import 'package:wallet/presentation/widgets/wallet_operations.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder:(context, orientation) => Scaffold(
        appBar: AppBar(
          title:  const Text(
            AppStrings.wallet,

          ),titleTextStyle: TextStyle(
          fontSize:isLandScape(orientation) ? 14.sp :  17.sp,color: AppColors.black,
        ),
          leading: Center(
              child: SvgPicture.asset(
            AppImages.menu,
            width:isLandScape(orientation) ? 18.w : 24.w,
            height:isLandScape(orientation) ?18.w : 24.w,
          )),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical:isLandScape(orientation) ?30.h : 24.h),
            children: [
               WalletCharging(isLandScape: isLandScape(orientation) ,),
              SizedBox(height:isLandScape(orientation) ? 55.h : 44.5.h),
               TitleWidget(title: AppStrings.searchWalletMovements,isLandScape: isLandScape(orientation)),
              SizedBox(height:isLandScape(orientation) ? 30.h : 16.h),
               SearchWalletMovements(isLandScape: isLandScape(orientation)),
              SizedBox(height:isLandScape(orientation) ? 55.h : 44.5.h),
               TitleWidget(title: AppStrings.walletOperations,isLandScape: isLandScape(orientation)),
               WalletOperations(isLandScape: isLandScape(orientation),),
            ],
          ),
        ),
      ),
    );
  }
}
