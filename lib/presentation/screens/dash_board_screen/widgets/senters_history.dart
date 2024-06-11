import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/screens/dash_board_screen/widgets/senters_list_tile.dart';

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
            itemCount: 40, // Set your item count here
            itemBuilder: (context, index) {
              return sentersListTie();
            },
          ),
        ),
      ],
    );
  }
}
