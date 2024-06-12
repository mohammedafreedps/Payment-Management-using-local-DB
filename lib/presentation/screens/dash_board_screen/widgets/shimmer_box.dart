import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';
import 'package:shimmer/shimmer.dart';

Widget shimmerBox({required double height,required double width}) {
  return Shimmer.fromColors(
    baseColor: AppColors.primaryColor,
    highlightColor: AppColors.secondaryColor,
    child: Container(
      color: Colors.white,
      width: width,
      height: height,
    ),
  );
}
