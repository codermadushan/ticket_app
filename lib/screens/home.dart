import 'package:flutter/material.dart';

import '../core/res/style_res.dart';
import '../core/res/media_res.dart';
import '../core/res/color_res.dart';
import '../core/widgets/double_text.dart';
import '../core/widgets/ticket.dart';
import '../core/widgets/hotel.dart';
import '../core/utils/all_data.dart';
import '../core/utils/app_route.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void _navigateToAllTickets(BuildContext context) {
    Navigator.of(context).pushNamed(AppRoute.allTickets);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Good morning', style: StyleRes.headLineStyle3),
                      SizedBox(height: 5),
                      Text('Book Tickets', style: StyleRes.headLineStyle1),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(MediaRes.logo),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //
            const SizedBox(height: 25),

            //
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  filled: true,
                  fillColor: ColorRes.searchBarColor,
                ),
              ),
            ),

            //
            const SizedBox(height: 40),

            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DoubleText(
                bigText: 'Upcoming Flights',
                smallText: 'View all',
                onPressed: () => _navigateToAllTickets(context),
              ),
            ),

            //
            const SizedBox(height: 20),

            //
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  ticketList.length,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 20 : 0,
                        right: 20,
                      ),
                      child: Ticket(ticketList[index]),
                    );
                  },
                ),
              ),
            ),

            //
            const SizedBox(height: 40),

            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DoubleText(
                bigText: 'Hotels',
                smallText: 'View all',
                onPressed: () {},
              ),
            ),

            //
            const SizedBox(height: 20),

            //
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  hotelList.length,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 20 : 0,
                        right: 20,
                      ),
                      child: Hotel(hotelList[index]),
                    );
                  },
                ),
              ),
            ),

            //
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
