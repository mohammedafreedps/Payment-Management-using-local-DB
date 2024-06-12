import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/screens/payment_screen/payment_screen.dart';
import 'package:paymentmanagementapp/presentation/utils/navigators.dart';

class SentAndRequestScreen extends StatelessWidget {
  const SentAndRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: TextButton(onPressed: (){
          Naviagators.pushNavigate(context, const PaymentScreen(index: 0));
        }, child: const Text('Pay Person')),
      ),
    );
  }
}