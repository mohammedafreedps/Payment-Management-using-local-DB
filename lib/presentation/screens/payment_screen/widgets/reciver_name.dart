import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';
import 'package:paymentmanagementapp/providers/dash_board_provider.dart';
import 'package:provider/provider.dart';

Widget reciverName({required BuildContext context, required int index}) {
  return Column(
    children: [
      Text(
        'Paying',
        style: TextStyles.secondaryNormal
            .copyWith(color: Colors.white, fontSize: 25),
      ),
      Text(
        '${context.watch<DashBoardProvider>().senterHistoryList[index].firstName} ${context.watch<DashBoardProvider>().senterHistoryList[index].lastName}',
        style: TextStyles.secondaryBold
            .copyWith(color: Colors.white, fontSize: 40),
      ),
    ],
  );
}
