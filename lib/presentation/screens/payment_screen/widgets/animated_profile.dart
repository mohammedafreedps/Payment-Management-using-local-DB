import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/screens/payment_screen/widgets/wave_animation.dart';
import 'package:paymentmanagementapp/providers/dash_board_provider.dart';
import 'package:provider/provider.dart';

Widget animatedProfile({required BuildContext context, required int index}) {
  return Center(
    child: WaveAnimation(
      size: MediaQuery.of(context).size.width * 0.5,
      color: Color.fromARGB(255, 138, 200, 251),
      centerChild: CircleAvatar(
        radius: 90,
        backgroundImage: NetworkImage(context
            .watch<DashBoardProvider>()
            .senterHistoryList[index]
            .profilePicUrl),
      ),
    ),
  );
}
