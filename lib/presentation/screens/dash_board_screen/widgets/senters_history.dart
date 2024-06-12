import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:paymentmanagementapp/presentation/screens/dash_board_screen/widgets/senters_list_tile.dart';
import 'package:paymentmanagementapp/presentation/screens/payment_screen/payment_screen.dart';
import 'package:paymentmanagementapp/presentation/utils/navigators.dart';
import 'package:paymentmanagementapp/providers/dash_board_provider.dart';
import 'package:provider/provider.dart';

class SentersHistory extends StatelessWidget {
  const SentersHistory({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Sent Again',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:
                context.watch<DashBoardProvider>().senterHistoryList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Naviagators.pushNavigate(
                        context, PaymentScreen(index: index));
                  },
                  child: sentersListTie(context: context, index: index).animate(
                      effects: const [
                        FadeEffect(duration: Duration(milliseconds: 500))
                      ]));
            },
          ),
        ),
      ],
    );
  }
}
