import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/screens/payment_screen/widgets/animated_profile.dart';
import 'package:paymentmanagementapp/presentation/screens/payment_screen/widgets/cancel_button.dart';
import 'package:paymentmanagementapp/presentation/screens/payment_screen/widgets/reciver_name.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';

class PaymentScreen extends StatelessWidget {
  final int index;
  const PaymentScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.accentColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          animatedProfile(context: context, index: index),
          reciverName(context: context, index: index),
          cancelButton(context: context)
        ],
      ),
    );
  }
}
