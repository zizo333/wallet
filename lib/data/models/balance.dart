// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:wallet/core/utils/app_colors.dart';
import 'package:wallet/core/utils/app_images.dart';
import 'package:wallet/core/utils/app_strings.dart';

class Balance {
  final String image;
  final String title;
  final double? price;
  final Color color;

  Balance({
    required this.image,
    required this.title,
    this.price,
    required this.color,
  });
}

List<Balance> balances = [
  Balance(
    image: AppImages.availableBalance,
    title: AppStrings.availableBalance,
    price: 2585,
    color: AppColors.blueCard,
  ),
  Balance(
    image: AppImages.reversedBalance,
    title: AppStrings.reservedBalance,
    price: 140,
    color: AppColors.redCard,
  ),Balance(
    image: AppImages.dailyTransactions,
    title: AppStrings.dailyTransactions,
    color: AppColors.orangeCard,
  ),Balance(
    image: AppImages.lastCharge,
    title: AppStrings.lastCharge,
    price: 2000,
    color: AppColors.greenCard,
  ),Balance(
    image: AppImages.lastExchange,
    title: AppStrings.lastExchange,
    price: 25,
    color: AppColors.purpleCard,
  ),
];
