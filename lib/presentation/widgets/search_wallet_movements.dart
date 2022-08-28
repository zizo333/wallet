import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet/core/utils/app_strings.dart';
import 'package:wallet/presentation/widgets/date_widget.dart';

class SearchWalletMovements extends StatelessWidget {
  final bool isLandScape;

  const SearchWalletMovements({Key? key, required this.isLandScape}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         DateWidget(hintText: AppStrings.fromDate, isLandScape: isLandScape,),
        SizedBox(height: 16.h),
         DateWidget(hintText: AppStrings.toDate, isLandScape: isLandScape),
        SizedBox(
          height:isLandScape ? 30.h : 16.h
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(
              AppStrings.search,
            ),
          ),
        ),
      ],
    );
  }
}
