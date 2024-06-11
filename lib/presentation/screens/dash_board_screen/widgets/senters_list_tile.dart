import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';

Widget sentersListTie(){
  return Column(
    children: [
      CircleAvatar(radius: 35,backgroundColor: Colors.amber,),
      Text('Mohammed',style: TextStyles.secondaryNormal,),
      Text('Afred',style: TextStyles.secondaryNormal,),
    ],
  );
}