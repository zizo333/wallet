import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet/core/utils/app_colors.dart';
import 'package:wallet/core/utils/app_strings.dart';

class WalletOperations extends StatelessWidget {
  final bool isLandScape;

  const WalletOperations({Key? key, required this.isLandScape})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 17.h),
      child: Column(
        children: [
          Table(
            border: TableBorder.all(
              borderRadius: BorderRadius.vertical(top: Radius.circular(5.r)),
              color: AppColors.tableBorder1,
            ),
            children: [
              TableRow(
                decoration: BoxDecoration(
                  color: AppColors.tableHeader,
                ),
                children: [
                  _Header(
                    title: AppStrings.operationNumber,
                    isLandScape: isLandScape,
                  ),
                  _Header(
                      title: AppStrings.movementType, isLandScape: isLandScape),
                  _Header(
                      title: AppStrings.movementDate, isLandScape: isLandScape),
                ],
              ),
            ],
          ),
          Table(
            border: TableBorder.all(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(5.r)),
              color: AppColors.tableBorder,
            ),
            children: [
              _drawRow(),
              _drawRow(),
              _drawRow(),
              _drawRow(),
              _drawRow(),
              _drawRow(),
              _drawRow(),
              _drawRow(),
              _drawRow(),
              _drawRow(),
              _drawRow(),
              _drawRow(),
            ],
          ),
          SizedBox(
            height: isLandScape ? 30.h : 16.h,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: AppColors.button2,
                shadowColor: Colors.transparent,
                elevation: 0,
              ),
              child: Text(
                AppStrings.showMore,
                style: TextStyle(color: AppColors.showMore),
              ),
            ),
          ),
          SizedBox(height: isLandScape ? 30.h : 16.h),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: TextButton.styleFrom(backgroundColor: AppColors.button1),
              child: const Text(
                AppStrings.loadTotalTransactions,
              ),
            ),
          ),
        ],
      ),
    );
  }

  TableRow _drawRow() {
    return TableRow(
      children: [
        _Cell(
          text: '230452',
          isLandScape: isLandScape,
        ),
        _Cell(text: 'صرف من المحفظة', isLandScape: isLandScape),
        _Cell(text: '2021-04-19', isLandScape: isLandScape),
      ],
    );
  }
}

class _Cell extends StatelessWidget {
  final String text;
  final bool isLandScape;

  const _Cell({
    Key? key,
    required this.text,
    required this.isLandScape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 21.h, horizontal: 7.w),
        child: Text(
          text,
          style: TextStyle(
            fontSize: isLandScape ? 10.sp : 12.sp,
            color: AppColors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final String title;
  final bool isLandScape;

  const _Header({
    Key? key,
    required this.title,
    required this.isLandScape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Text(
        title,
        style: TextStyle(
          fontSize: isLandScape ? 10.sp : 12.sp,
          color: AppColors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
