import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';
import 'package:paymentmanagementapp/providers/dash_board_provider.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

Widget sentersListTie({required BuildContext context, required int index}) {
  bool isLoading = context.watch<DashBoardProvider>().isAllLoaded;
  if (isLoading) {
    return Row(
      children: [
        Column(
          children: [
            CircleAvatar(
                radius: 35,
                backgroundColor: AppColors.primaryFontColor,
                backgroundImage: NetworkImage(
                  context
                      .watch<DashBoardProvider>()
                      .senterHistoryList[index]
                      .profilePicUrl,
                )),
            Text(
              context
                  .watch<DashBoardProvider>()
                  .senterHistoryList[index]
                  .firstName,
              style: TextStyles.secondaryNormal,
            ),
            Text(
              context
                  .watch<DashBoardProvider>()
                  .senterHistoryList[index]
                  .lastName,
              style: TextStyles.secondaryNormal,
            ),
          ],
        ),
        const SizedBox(
          width: 15,
        )
      ],
    );
  } else {
    return Row(
      children: [
        Column(
          children: [
            Shimmer.fromColors(
                baseColor: AppColors.primaryColor,
                highlightColor: AppColors.secondaryColor,
                child: const CircleAvatar(
                  radius: 35,
                )),
            Text(
              context
                  .watch<DashBoardProvider>()
                  .senterHistoryList[index]
                  .firstName,
              style: TextStyles.secondaryNormal,
            ),
            Text(
              context
                  .watch<DashBoardProvider>()
                  .senterHistoryList[index]
                  .lastName,
              style: TextStyles.secondaryNormal,
            ),
          ],
        ),
        const SizedBox(
          width: 15,
        )
      ],
    );
  }
}
