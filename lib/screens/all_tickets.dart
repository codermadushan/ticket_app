import 'package:flutter/material.dart';

import '../core/utils/all_data.dart';
import '../core/utils/app_route.dart';
import '../core/res/color_res.dart';
import '../core/widgets/ticket.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  void _onTap(BuildContext context, int index) {
    Navigator.of(context).pushNamed(
      AppRoute.ticketView,
      arguments: {'index': index},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.bgColor,
      appBar: AppBar(
        title: const Text('All Tickets'),
        centerTitle: true,
        backgroundColor: ColorRes.bgColor,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
              ticketList.length,
              (index) {
                return Padding(
                  padding: EdgeInsets.only(
                    top: index == 0 ? 20 : 0,
                    bottom: 20,
                  ),
                  child: GestureDetector(
                    onTap: () => _onTap(context, index),
                    child: Ticket(ticketList[index]),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
