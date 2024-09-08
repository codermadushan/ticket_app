import 'package:flutter/material.dart';

import '../core/res/color_res.dart';
import '../core/utils/all_data.dart';
import '../core/widgets/expanded_text.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late final int _hotelIndex;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)!.settings.arguments!;
    _hotelIndex = (args as Map<String, int>)['index']!;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.bgColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 300,
            backgroundColor: ColorRes.bgColor,
            flexibleSpace: FlexibleSpaceBar(
              // title: Text(hotelList[_hotelIndex]['place']),
              centerTitle: true,
              background: Stack(
                children: [
                  Image.asset(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    'assets/images/${hotelList[_hotelIndex]['image']}',
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    right: 20,
                    bottom: 20,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      child: Text(
                        hotelList[_hotelIndex]['place'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: 20),

                //
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ExpandedText(
                    text: hotelList[_hotelIndex]['detail'],
                    maxLines: 9,
                  ),
                ),

                //
                const SizedBox(height: 40),

                //
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'More images',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                //
                const SizedBox(height: 20),

                //
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      3,
                      (index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: index == 0 ? 20 : 0,
                            right: 20,
                          ),
                          child: Image.asset(
                            'assets/images/${hotelList[_hotelIndex]['image']}',
                            height: 200,
                            width: (200 / 9) * 16,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
