import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/data/local_constant_data.dart';
import 'package:paymentmanagementapp/presentation/screens/setting_screen/widgets/setting_menu_tile.dart';
import 'package:paymentmanagementapp/presentation/widgets/search_bar_Delegate.dart';
import 'package:paymentmanagementapp/presentation/screens/setting_screen/widgets/user_detail.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 350,
              backgroundColor: AppColors.secondaryColor,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    userDetail(),
                  ],
                ),),
              ),
            ),
            SliverPadding(padding: EdgeInsets.only(top: 30)),
            SliverPersistentHeader(delegate: SearchBarDelegate(),pinned: true,),
            SliverList(delegate: SliverChildBuilderDelegate((context, index) {
              return settingMenuTile(icon: settingIcons[index], iconName: settingMenus[index]);
            },childCount: settingMenus.length))
          ],
        ),
      ),
    );
  }
}