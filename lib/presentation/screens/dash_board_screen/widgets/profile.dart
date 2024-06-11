import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';

Widget profile() {
  return Row(
    children: [
      GestureDetector(
        onTap: (){
          
        },
        child: CircleAvatar(
          radius: 35,
          backgroundColor: Colors.amber,
        ),
      ),
      SizedBox(width: 15,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hi Vanessa,',style: TextStyles.primaryBold.copyWith(fontSize: 20),),
          Text('''Here's your spending dashboard''',style: TextStyles.primaryNormal.copyWith(fontSize: 20),overflow: TextOverflow.ellipsis,)
        ],
      )
    ],
  );
}
