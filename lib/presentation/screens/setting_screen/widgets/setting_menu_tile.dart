import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';

Widget settingMenuTile({required IconData icon,required String iconName}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      
      children: [
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon,color: AppColors.iconColor,size: 35,),
                SizedBox(width: 15,),
                Text(iconName,style: TextStyles.primaryNormal.copyWith(fontSize: 18),)
              ],
            ),
            Icon(Icons.arrow_forward_ios_rounded,color: AppColors.iconColor,size: 20,)
          ],
        ),
        SizedBox(height: 15,),
        Divider()
      ],
    ),
  );
}