import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';
import 'package:paymentmanagementapp/providers/dash_board_provider.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

Widget spending({required BuildContext context}) {
  bool isLoaded = context.watch<DashBoardProvider>().isAllLoaded;

  if (isLoaded) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadiusDirectional.circular(10)),
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                '\$204.05',
                style: TextStyles.primaryBold.copyWith(fontSize: 45),
              ),
              Text(
                'Your Balance',
                style: TextStyles.secondaryNormal.copyWith(fontSize: 15),
              )
            ],
          ),
          Container(
            width: 1,
            height: 100,
            color: AppColors.iconColor,
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    '30',
                    style: TextStyles.accentBold.copyWith(fontSize: 45),
                  ),
                  Text(
                    'Last Days',
                    style: TextStyles.secondaryNormal.copyWith(fontSize: 15),
                  )
                ],
              ),
              const Icon(
                Icons.arrow_drop_down,
                color: AppColors.accentColor,
                size: 40,
              )
            ],
          ),
        ],
      ),
    );
  } else {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadiusDirectional.circular(10)),
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Shimmer.fromColors(
                baseColor: AppColors.primaryColor,
                highlightColor: AppColors.secondaryColor,
                child: Text(
                  '\$000',
                  style: TextStyles.primaryBold.copyWith(fontSize: 45),
                ),
              ),
              Text(
                'Your Balance',
                style: TextStyles.secondaryNormal.copyWith(fontSize: 15),
              )
            ],
          ),
          Container(
            width: 1,
            height: 100,
            color: AppColors.iconColor,
          ),
          Row(
            children: [
              Column(
                children: [
                  Shimmer.fromColors(
                    baseColor: AppColors.primaryColor,
                highlightColor: AppColors.secondaryColor,
                    child: Text(
                      '00',
                      style: TextStyles.accentBold.copyWith(fontSize: 45),
                    ),
                  ),
                  Text(
                    'Last Days',
                    style: TextStyles.secondaryNormal.copyWith(fontSize: 15),
                  )
                ],
              ),
              const Icon(
                Icons.arrow_drop_down,
                color: AppColors.accentColor,
                size: 40,
              )
            ],
          ),
        ],
      ),
    );
  }
}
