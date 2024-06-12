import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/models/activity_model.dart';
import 'package:paymentmanagementapp/models/senter_history_model.dart';
import 'package:paymentmanagementapp/models/user_model.dart';
import 'package:paymentmanagementapp/providers/dash_board_provider.dart';
import 'package:paymentmanagementapp/presentation/screens/nav_screen/nav_screen.dart';
import 'package:paymentmanagementapp/services/boxes.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter<UserModel>(UserModelAdapter());
  Hive.registerAdapter<SenterHistoryModel>(SenterHistoryModelAdapter());
  Hive.registerAdapter<ActivityModel>(ActivityModelAdapter());
  userBox = await Hive.openBox<UserModel>('userBox');
  activityBox = await Hive.openBox<ActivityModel>('activityBox');
  senterHistoryBox = await Hive.openBox<SenterHistoryModel>('senterHistoryBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => DashBoardProvider())],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NavScreen(),
      ),
    );
  }
}