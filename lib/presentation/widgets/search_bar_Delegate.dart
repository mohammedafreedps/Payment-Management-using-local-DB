import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';

class SearchBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 70,
      color: AppColors.primaryColor,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: TextField(
        cursorColor: AppColors.accentColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 11),
          fillColor: AppColors.secondaryColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none
          ),
          hintStyle: TextStyles.secondaryNormal,
          hintText: 'Search Transactions',
          prefixIcon: Icon(Icons.search,color: AppColors.accentColor,),
        ),
      ),
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