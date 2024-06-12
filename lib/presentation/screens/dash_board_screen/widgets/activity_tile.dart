import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/screens/dash_board_screen/widgets/shimmer_box.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';
import 'package:paymentmanagementapp/providers/dash_board_provider.dart';
import 'package:provider/provider.dart';

Widget activityTile({required BuildContext context, required int index}) {
  bool isLoaded = context.watch<DashBoardProvider>().isAllLoaded;
  if (isLoaded) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Text(
                context
                    .watch<DashBoardProvider>()
                    .activityList[index]
                    .productName,
                style: TextStyles.primaryNormal.copyWith(fontSize: 18),
              )),
              Text(
                  '\$${context.watch<DashBoardProvider>().activityList[index].price}',
                  style: TextStyles.primaryNormal.copyWith(fontSize: 18))
            ],
          ),
          Text(
            context.watch<DashBoardProvider>().activityList[index].storeName,
            style: TextStyles.primaryBold.copyWith(fontSize: 18),
          ),
          Text(
            'Return Time Remaining ${context.watch<DashBoardProvider>().activityList[index].returnTimeLeft}',
            style: TextStyles.secondaryNormal.copyWith(fontSize: 18),
          ),
          Text(context.watch<DashBoardProvider>().activityList[index].address,
              style: TextStyles.secondaryNormal.copyWith(fontSize: 18)),
          const Divider()
        ],
      ),
    );
  } else {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              shimmerBox(height: 30, width: 300),
              shimmerBox(height: 30, width: 50)
            ],
          ),
          const SizedBox(height: 10,),
          shimmerBox(height: 30, width: 150),
          const SizedBox(height: 10,),
          shimmerBox(height: 30, width: 200),
          const SizedBox(height: 10,),
          shimmerBox(height: 30, width: 300),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}
