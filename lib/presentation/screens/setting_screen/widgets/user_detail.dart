import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';

Widget userDetail() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                'LogOut',
                style: TextStyles.accentBold.copyWith(fontSize: 18),
              )),
        ],
      ),
      const CircleAvatar(
        backgroundColor: AppColors.primaryColor,
        backgroundImage: NetworkImage('https://images.unsplash.com/photo-1641320485649-7063cd9f4a79?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
        radius: 75,
      ),
      const SizedBox(
        height: 20,
      ),
      Text(
        'Mea Jamison',
        style: TextStyles.primaryNormal.copyWith(fontSize: 25),
      ),
      Text(
        'maej@gmail.com',
        style: TextStyles.primaryNormal.copyWith(fontSize: 15),
      )
    ],
  );
}
