import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/bottom_nav_bar.dart';
import 'core/utils/app_route.dart';
import 'screens/all_tickets.dart';
import 'screens/ticket_view.dart';

void main() {
  runApp(const ProviderScope(child: TicketApp()));
}

class TicketApp extends StatelessWidget {
  const TicketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: AppRoute.home,
      routes: {
        AppRoute.home: (context) => const BottomNavBar(),
        AppRoute.allTickets: (context) => const AllTickets(),
        AppRoute.ticketView: (context) => const TicketView(),
      },
    );
  }
}
