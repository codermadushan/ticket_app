import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

import '../core/res/style_res.dart';
import '../core/res/media_res.dart';
import '../core/res/color_res.dart';
import '../core/widgets/big_dot.dart';
import '../core/widgets/dynamic_dashed_line.dart';
import '../core/widgets/ticket.dart';
import '../core/utils/all_data.dart';

class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  int _ticketIndex = 0;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)!.settings.arguments;
    if (args != null) {
      final map = args as Map<String, int>;
      _ticketIndex = map['index']!;
    }
    super.didChangeDependencies();
  }

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorRes.bgColor,
      appBar: AppBar(
        title: const Text(
          'Tickets',
          textAlign: TextAlign.start,
          style: StyleRes.headLineStyle1,
        ),
        centerTitle: true,
        backgroundColor: ColorRes.bgColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                        'Previous',
                        style: StyleRes.headLineStyle3.copyWith(
                          color: ColorRes.textColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //
              const SizedBox(height: 20),

              //
              Container(
                width: screenWidth * 0.85,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Text(
                            ticketList[_ticketIndex]['from']['code'],
                            style: StyleRes.headLineStyle3,
                          ),
                          const Spacer(),
                          const BigDot(color: ColorRes.ticketBlueLightColor),
                          const Expanded(
                            child: Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                DynamicDashedLine(
                                  dashWidth: 3,
                                  dashHeight: 1,
                                  dashColor: ColorRes.ticketBlueLightColor,
                                ),

                                //
                                RotatedBox(
                                  quarterTurns: 1,
                                  child: Icon(
                                    Icons.airplanemode_active,
                                    color: ColorRes.ticketBlueLightColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const BigDot(color: ColorRes.ticketBlueLightColor),
                          const Spacer(),
                          Text(
                            ticketList[_ticketIndex]['to']['code'],
                            style: StyleRes.headLineStyle3,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 3),

                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 100,
                            child: Text(
                              ticketList[_ticketIndex]['from']['name'],
                              style: StyleRes.headLineStyle4.copyWith(
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ),
                          Text(
                            ticketList[_ticketIndex]['flying_time'],
                            style: StyleRes.headLineStyle4.copyWith(
                              color: Colors.grey.shade500,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: Text(
                              ticketList[_ticketIndex]['to']['name'],
                              textAlign: TextAlign.end,
                              style: StyleRes.headLineStyle4.copyWith(
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //
                    const SizedBox(height: 20),

                    //
                    Stack(
                      alignment: AlignmentDirectional.center,
                      clipBehavior: Clip.none,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: DynamicDashedLine(
                            dashWidth: 6,
                            dashHeight: 1,
                            dashColor: Colors.grey.shade500,
                          ),
                        ),

                        //
                        Positioned(
                          left: -10,
                          child: Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              // color: ColorRes.textColor,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 2, color: ColorRes.textColor),
                            ),
                            child: const CircleAvatar(
                              radius: 5,
                              backgroundColor: ColorRes.textColor,
                            ),
                          ),
                        ),

                        //
                        Positioned(
                          right: -10,
                          child: Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              // color: ColorRes.textColor,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 2, color: ColorRes.textColor),
                            ),
                            child: const CircleAvatar(
                              radius: 5,
                              backgroundColor: ColorRes.textColor,
                            ),
                          ),
                        ),
                      ],
                    ),

                    //
                    const SizedBox(height: 20),

                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 100,
                            child: Text(
                              ticketList[_ticketIndex]['date'],
                              style: StyleRes.headLineStyle3,
                            ),
                          ),
                          Text(
                            ticketList[_ticketIndex]['departure_time'],
                            style: StyleRes.headLineStyle3,
                          ),
                          SizedBox(
                            width: 100,
                            child: Text(
                              '${ticketList[_ticketIndex]['number']}',
                              textAlign: TextAlign.end,
                              style: StyleRes.headLineStyle3,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //
                    const SizedBox(height: 3),

                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 100,
                            child: Text(
                              'Date',
                              style: StyleRes.headLineStyle4.copyWith(
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ),
                          Text(
                            'Departure time',
                            style: StyleRes.headLineStyle4.copyWith(
                              color: Colors.grey.shade500,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: Text(
                              'Number',
                              textAlign: TextAlign.end,
                              style: StyleRes.headLineStyle4.copyWith(
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //
                    const SizedBox(height: 20),

                    //
                    Divider(
                      color: Colors.grey.shade500,
                      thickness: 0.5,
                      height: 0,
                    ),

                    //
                    const SizedBox(height: 20),

                    //
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Madushan',
                            style: StyleRes.headLineStyle3,
                          ),
                          Text(
                            '5221 364869',
                            style: StyleRes.headLineStyle3,
                          ),
                        ],
                      ),
                    ),

                    //
                    const SizedBox(height: 3),

                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Passenger',
                            style: StyleRes.headLineStyle4.copyWith(
                              color: Colors.grey.shade500,
                            ),
                          ),
                          Text(
                            'Passport',
                            style: StyleRes.headLineStyle4.copyWith(
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //
                    const SizedBox(height: 20),

                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: DynamicDashedLine(
                        dashWidth: 6,
                        dashHeight: 1,
                        dashColor: Colors.grey.shade500,
                      ),
                    ),

                    //
                    const SizedBox(height: 20),

                    //
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '364738 28274478',
                            style: StyleRes.headLineStyle3,
                          ),
                          Text(
                            'B2SG28',
                            style: StyleRes.headLineStyle3,
                          ),
                        ],
                      ),
                    ),

                    //
                    const SizedBox(height: 3),

                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Number of e-ticket',
                            style: StyleRes.headLineStyle4.copyWith(
                              color: Colors.grey.shade500,
                            ),
                          ),
                          Text(
                            'Booking code',
                            style: StyleRes.headLineStyle4.copyWith(
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //
                    const SizedBox(height: 20),

                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: DynamicDashedLine(
                        dashWidth: 6,
                        dashHeight: 1,
                        dashColor: Colors.grey.shade500,
                      ),
                    ),

                    //
                    const SizedBox(height: 20),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                MediaRes.visaCard,
                                height: 16,
                              ),
                              const Text(
                                ' *** 2462',
                                style: StyleRes.headLineStyle3,
                              )
                            ],
                          ),
                          const Text(
                            '\$249.99',
                            style: StyleRes.headLineStyle3,
                          ),
                        ],
                      ),
                    ),

                    //
                    const SizedBox(height: 3),

                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Payment method',
                            style: StyleRes.headLineStyle4.copyWith(
                              color: Colors.grey.shade500,
                            ),
                          ),
                          Text(
                            'Price',
                            style: StyleRes.headLineStyle4.copyWith(
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //
                    const SizedBox(height: 20),

                    //
                    Divider(
                      color: Colors.grey.shade500,
                      thickness: 0.5,
                      height: 0,
                    ),

                    //
                    const SizedBox(height: 20),

                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: BarcodeWidget(
                          barcode: Barcode.code128(),
                          data: 'Madushan Wijewardhana',
                          height: 70,
                          drawText: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //
              const SizedBox(height: 20),

              //
              Ticket(ticketList[_ticketIndex]),

              //
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
