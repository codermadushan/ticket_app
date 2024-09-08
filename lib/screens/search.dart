import 'package:flutter/material.dart';

import '../core/res/style_res.dart';
import '../core/res/color_res.dart';
import '../core/res/media_res.dart';
import '../core/widgets/text_with_icon.dart';
import '../core/widgets/double_text.dart';
import '../core/utils/app_route.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _navigateToAllTickets() {
    Navigator.of(context).pushNamed(AppRoute.allTickets);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                //
                Text(
                  'What are\nyou looking for?',
                  style: StyleRes.headLineStyle1.copyWith(fontSize: 35),
                ),

                //
                const SizedBox(height: 20),

                //
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: ColoredBox(
                    color: ColorRes.tabBarBgColor,
                    child: TabBar(
                      controller: _tabController,
                      splashBorderRadius: BorderRadius.circular(100),
                      indicatorPadding: const EdgeInsets.all(4),
                      indicatorSize: TabBarIndicatorSize.tab,
                      dividerHeight: 0,
                      indicator: BoxDecoration(
                        color: ColorRes.tabIndicatorColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      tabs: const [
                        Tab(
                          child: Text(
                            'Airline Tickets',
                            style: StyleRes.textStyle,
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Hotels',
                            style: StyleRes.textStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //
                const SizedBox(height: 25),

                //
                const TextWithIcon(
                  text: 'Departure',
                  iconData: Icons.flight_takeoff,
                ),

                //
                const SizedBox(height: 20),

                //
                const TextWithIcon(
                  text: 'Arrival',
                  iconData: Icons.flight_land,
                ),

                //
                const SizedBox(height: 25),

                Container(
                  padding: const EdgeInsets.all(18),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: ColorRes.buttonBlueColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Find tickets',
                    textAlign: TextAlign.center,
                    style: StyleRes.textStyle.copyWith(color: Colors.white),
                  ),
                ),

                //
                const SizedBox(height: 40),

                //
                DoubleText(
                  bigText: 'Upcoming flights',
                  smallText: 'View all',
                  onPressed: _navigateToAllTickets,
                ),

                //
                const SizedBox(height: 20),

                //
                SizedBox(
                  height: 400,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 190,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                    image: AssetImage(MediaRes.planeSit),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              //
                              const Text(
                                "20%\ndiscount for early booking of this flight. Don't miss",
                                style: StyleRes.headLineStyle2,
                              ),
                            ],
                          ),
                        ),
                      ),

                      //
                      const SizedBox(width: 20),

                      //
                      Expanded(
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 210,
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF3A8888),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Discount\nfor servey',
                                        style: StyleRes.headLineStyle2.copyWith(
                                          color: Colors.white,
                                        ),
                                      ),

                                      //
                                      Text(
                                        'Take the servey about our services and get discount',
                                        style: StyleRes.textStyle.copyWith(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //
                                Positioned(
                                  top: -40,
                                  right: -40,
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 20,
                                        color: const Color(0xFF189999),
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            //
                            const SizedBox(height: 20),

                            //
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFEC6545),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'Take love',
                                      style: StyleRes.headLineStyle2.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),

                                    //
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '😍',
                                          style: TextStyle(fontSize: 32),
                                        ),

                                        //
                                        Text(
                                          '😎',
                                          style: TextStyle(fontSize: 40),
                                        ),

                                        //
                                        Text(
                                          '😘',
                                          style: TextStyle(fontSize: 32),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
