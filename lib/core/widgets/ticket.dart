import 'package:flutter/material.dart';

import 'big_dot.dart';
import 'dynamic_dashed_line.dart';
import '../res/style_res.dart';
import '../res/color_res.dart';

class Ticket extends StatelessWidget {
  final Map<String, dynamic> _ticketDataMap;

  const Ticket(
    Map<String, dynamic> ticketDataMap, {
    super.key,
  }) : _ticketDataMap = ticketDataMap;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth * 0.85,
      child: Column(
        children: [
          // Ticket top par4
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: ColorRes.ticketBlueColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      _ticketDataMap['from']['code'],
                      style:
                          StyleRes.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    const Spacer(),
                    const BigDot(color: Colors.white),
                    const Expanded(
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          DynamicDashedLine(
                            dashWidth: 3,
                            dashHeight: 1,
                            dashColor: Colors.white,
                          ),
                          RotatedBox(
                            quarterTurns: 1,
                            child: Icon(
                              Icons.airplanemode_active,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const BigDot(color: Colors.white),
                    const Spacer(),
                    Text(
                      _ticketDataMap['to']['code'],
                      style:
                          StyleRes.headLineStyle3.copyWith(color: Colors.white),
                    ),
                  ],
                ),

                //
                const SizedBox(height: 3),

                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        _ticketDataMap['from']['name'],
                        style: StyleRes.headLineStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      _ticketDataMap['flying_time'],
                      style: StyleRes.headLineStyle4.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        _ticketDataMap['to']['name'],
                        textAlign: TextAlign.end,
                        style: StyleRes.headLineStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Ticket middle part
          ColoredBox(
            color: ColorRes.ticketOrangeColor,
            child: Row(
              children: [
                Container(
                  width: 10,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                  ),
                ),

                //
                const Expanded(
                  child: DynamicDashedLine(
                    dashWidth: 6,
                    dashHeight: 2,
                    dashColor: Colors.white,
                  ),
                ),

                //
                Container(
                  width: 10,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      bottomLeft: Radius.circular(100),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Ticket bottom part
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: ColorRes.ticketOrangeColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        _ticketDataMap['date'],
                        style: StyleRes.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    Text(
                      _ticketDataMap['departure_time'],
                      style:
                          StyleRes.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        '${_ticketDataMap['number']}',
                        textAlign: TextAlign.end,
                        style: StyleRes.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),

                //
                const SizedBox(height: 3),

                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Date',
                        style: StyleRes.headLineStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      'Departure time',
                      style:
                          StyleRes.headLineStyle4.copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Number',
                        textAlign: TextAlign.end,
                        style: StyleRes.headLineStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
