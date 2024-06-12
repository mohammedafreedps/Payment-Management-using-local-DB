import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';
import 'package:paymentmanagementapp/presentation/utils/navigators.dart';

Widget cancelButton({required BuildContext context}){
  return GestureDetector(
    onTap: (){
      Naviagators.popNavigate(context);
    },
    child: Container(
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
      width: 300,
      height: 70,
      child:  Center(child: Text('Cancel Payment',style: TextStyles.primaryBold.copyWith(fontSize: 20),),),
    ),
  );
}