import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';
import 'package:badges/badges.dart' as badges;

Widget notificationButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Stack(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, size: 35, color: AppColors.iconColor),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: badges.Badge(
              badgeContent: Text('2'),
              badgeStyle: badges.BadgeStyle(badgeColor: Colors.red),
            ),
          ),
        ],
      ),
    ],
  );
}
