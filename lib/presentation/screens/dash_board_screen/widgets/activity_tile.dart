import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';

Widget activityTile(){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Product Name',style: TextStyles.primaryNormal.copyWith(fontSize: 18),),
            Text('\$3,234.04',style: TextStyles.primaryNormal.copyWith(fontSize: 18) )
          ],
        ),
        Text('Store Name',style: TextStyles.primaryBold.copyWith(fontSize: 18),),
        Text('Return Time Remaining',style: TextStyles.secondaryNormal.copyWith(fontSize: 18),),
        Text("Addresses",style: TextStyles.secondaryNormal.copyWith(fontSize: 18)),
        const Divider()
      ],
    ),
  );
}