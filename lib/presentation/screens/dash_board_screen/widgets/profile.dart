import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';
import 'package:paymentmanagementapp/providers/dash_board_provider.dart';
import 'package:provider/provider.dart';

Widget profile({required BuildContext context}) {
  return Row(
    children: [
      GestureDetector(
        onTap: (){
          
        },
        child: const CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage('https://images.unsplash.com/photo-1641320485649-7063cd9f4a79?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          backgroundColor: AppColors.primaryColor,
        ),
      ),
      const SizedBox(width: 15,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(context.watch<DashBoardProvider>().userList[0].name ,style: TextStyles.primaryBold.copyWith(fontSize: 20),),
            Text('''Here's your spending dashboard''',style: TextStyles.primaryNormal.copyWith(fontSize: 20),overflow: TextOverflow.ellipsis,)
          ],
        ),
      )
    ],
  );
}
