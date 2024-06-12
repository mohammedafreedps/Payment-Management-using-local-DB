import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/screens/dash_board_screen/widgets/senters_list_tile.dart';
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
        const SizedBox(height: 15,),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: context.watch<DashBoardProvider>().senterHistoryList.length, // Set your item count here
            itemBuilder: (context, index) {
              return sentersListTie(context: context, index: index);
            },
          ),
        ),
      ],
    );
  }
}
