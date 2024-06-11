import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/screens/dash_board_screen/providers/dash_board_provider.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';
import 'package:provider/provider.dart';

class SearchBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return context.watch<DashBoardProvider>().isSearchFocus
        ? GestureDetector(
            onTap: () {
              context.read<DashBoardProvider>().checkSearchFocused(false);
              context.read<DashBoardProvider>().test(false);
            },
            child: Container(
              height: 70,
              color: AppColors.primaryColor,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(color: AppColors.secondaryColor,borderRadius: BorderRadius.circular(15)),
                  height: 45,
                  width: 430,
                  child: const Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Icon(Icons.search,color: AppColors.accentColor,size: 30,),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Text('Search Transactions',style: TextStyles.secondaryBold,)
                    ],
                  ),
                ),
              ),
            ))
        : Container(
            height: 70,
            color: AppColors.primaryColor,
            padding: const EdgeInsets.only(left: 30,right: 30, top: 20),
            child: TextField(
              focusNode: FocusNode(),
              cursorColor: AppColors.accentColor,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 11),
                fillColor: AppColors.secondaryColor,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
                hintStyle: TextStyles.secondaryNormal,
                hintText: 'Search Transactions',
                prefixIcon: IconButton(
                  onPressed: () {
                    context.read<DashBoardProvider>().checkSearchFocused(true);
                    context.read<DashBoardProvider>().test(true);
                  },
                  icon: const Icon(Icons.close),
                  color: AppColors.accentColor,
                ),
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
