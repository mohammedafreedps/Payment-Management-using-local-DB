import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/screens/dash_board_screen/providers/dash_board_provider.dart';
import 'package:paymentmanagementapp/presentation/screens/dash_board_screen/widgets/activity_bar_delegate.dart';
import 'package:paymentmanagementapp/presentation/screens/dash_board_screen/widgets/activity_tile.dart';
import 'package:paymentmanagementapp/presentation/screens/dash_board_screen/widgets/notification_button.dart';
import 'package:paymentmanagementapp/presentation/screens/dash_board_screen/widgets/profile.dart';
import 'package:paymentmanagementapp/presentation/widgets/search_bar_Delegate.dart';
import 'package:paymentmanagementapp/presentation/screens/dash_board_screen/widgets/senters_history.dart';
import 'package:paymentmanagementapp/presentation/screens/dash_board_screen/widgets/spendings.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';
import 'package:provider/provider.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            context.watch<DashBoardProvider>().showDetailTest
                ? SliverAppBar(
                    expandedHeight: 520,
                    backgroundColor: AppColors.secondaryColor,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            notificationButton(),
                            profile(),
                            const SizedBox(
                              height: 30,
                            ),
                            spending(),
                            const SizedBox(
                              height: 30,
                            ),
                            const SentersHistory()
                          ],
                        ),
                      ),
                    ),
                  )
                : SliverPersistentHeader(
                    delegate: SearchBarDelegate(),
                    pinned: true,
                  ),
            const SliverPadding(padding: EdgeInsets.only(top: 30)),
            context.watch<DashBoardProvider>().showDetailTest
                ? SliverPersistentHeader(
                    delegate: SearchBarDelegate(),
                    pinned: true,
                  )
                : const SliverPadding(padding: EdgeInsets.only(top: 0)),
            SliverPersistentHeader(delegate: ActivityBardelegate(),),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return activityTile();
            }, childCount: 10))
          ],
        ),
      ),
    );
  }
}
