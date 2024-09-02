import 'package:flutter/material.dart';

import '../core/utils/all_data.dart';
import '../core/widgets/ticket.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Tickets'),
        centerTitle: true,
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
                  child: Ticket(ticketList[index]),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
