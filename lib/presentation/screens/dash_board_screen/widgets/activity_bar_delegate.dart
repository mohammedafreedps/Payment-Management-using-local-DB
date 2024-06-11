import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';

class ActivityBardelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Your Activity',style: TextStyles.primaryBold.copyWith(fontSize: 20),),
          Icon(Icons.filter_list,color: AppColors.accentColor,size: 35,)
        ],
      )
    );
  }

  @override
  double get maxExtent => 70.0;

  @override
  double get minExtent => 70.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}