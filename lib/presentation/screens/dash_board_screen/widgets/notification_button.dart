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
            icon: const Icon(Icons.notifications, size: 35, color: AppColors.iconColor),
          ),
          const Positioned(
            right: 0,
            top: 0,
            child: badges.Badge(
              badgeContent: Text('2',style: TextStyle(color: AppColors.primaryColor),),
              badgeStyle: badges.BadgeStyle(badgeColor: Colors.red),
            ),
          ),
        ],
      ),
    ],
  );
}
