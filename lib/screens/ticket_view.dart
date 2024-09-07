import 'package:flutter/material.dart';

import '../core/res/style_res.dart';
import '../core/res/color_res.dart';

class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            //
            const Text(
              'Tickets',
              style: StyleRes.headLineStyle1,
            ),

            //
            const SizedBox(height: 20),

            //
            DecoratedBox(
              decoration: BoxDecoration(
                color: ColorRes.tabBarBgColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: TabBar(
                controller: _tabController,
                dividerHeight: 0,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                indicatorPadding: const EdgeInsets.all(4),
                tabs: [
                  Tab(
                    child: Text(
                      'Upcoming',
                      style: StyleRes.headLineStyle3.copyWith(
                        color: ColorRes.textColor,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Upcoming',
                      style: StyleRes.headLineStyle3.copyWith(
                        color: ColorRes.textColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //
          ],
        ),
      ),
    );
  }
}
