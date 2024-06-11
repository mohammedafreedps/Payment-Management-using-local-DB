import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/screens/dash_board_screen/providers/dash_board_provider.dart';
import 'package:paymentmanagementapp/presentation/screens/nav_screen/nav_screen.dart';
import 'package:provider/provider.dart';

void main() {
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