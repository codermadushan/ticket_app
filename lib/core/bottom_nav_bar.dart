import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'res/color_res.dart';
import '../providers/screen_index_provider.dart';
import '../screens/home.dart';
import '../screens/search.dart';
import '../screens/ticket_view.dart';
import '../screens/profile.dart';

class BottomNavBar extends ConsumerStatefulWidget {
  const BottomNavBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends ConsumerState<BottomNavBar> {
  final screens = const [
    Home(),
    Search(),
    TicketView(),
    Profile(),
  ];

  void _setScreenIndex(int index) {
    ref.read(screenIndexProvider.notifier).setScreenIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    final screenIndex = ref.watch(screenIndexProvider);

    return Scaffold(
      backgroundColor: ColorRes.bgColor,
      body: screens[screenIndex],
      bottomNavigationBar: NavigationBar(
        indicatorColor: ColorRes.primaryColor.withOpacity(0.3),
        selectedIndex: screenIndex,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        onDestinationSelected: _setScreenIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(
            icon: Icon(Icons.airplane_ticket),
            label: 'Tickets',
          ),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
