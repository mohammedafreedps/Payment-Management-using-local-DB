import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';

Widget spending(){
  return Container(
    decoration: BoxDecoration(color: AppColors.primaryColor,borderRadius: BorderRadiusDirectional.circular(10)),
    padding: EdgeInsets.symmetric(vertical: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text('\$204.05',style: TextStyles.primaryBold.copyWith(fontSize: 45),),
            Text('Your Balance',style: TextStyles.secondaryNormal.copyWith(fontSize: 15),)
          ],
        ),
        Container(width: 1,height: 100, color: AppColors.iconColor,),
        Row(
          children: [
            Column(
              children: [
                Text('30',style: TextStyles.accentBold.copyWith(fontSize: 45),),
                Text('Last Days',style: TextStyles.secondaryNormal.copyWith(fontSize: 15),)
              ],
            ),
            Icon(Icons.arrow_drop_down,color: AppColors.accentColor,size: 40,)
          ],
        ),
      ],
    ),
  );
}