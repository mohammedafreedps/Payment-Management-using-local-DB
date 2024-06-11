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
      CircleAvatar(
        backgroundColor: Colors.amber,
        radius: 75,
      ),
      SizedBox(
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
