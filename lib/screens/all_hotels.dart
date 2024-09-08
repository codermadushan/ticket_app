import 'package:flutter/material.dart';

import '../core/res/color_res.dart';
import '../core/utils/all_data.dart';
import '../core/utils/app_route.dart';
import '../core/widgets/hotel.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  void _navigateToHotelDetail(BuildContext context, int index) {
    Navigator.of(context).pushNamed(
      AppRoute.hotelDetail,
      arguments: {'index': index},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.bgColor,
      appBar: AppBar(
        title: const Text('All Hotels'),
        centerTitle: true,
        backgroundColor: ColorRes.bgColor,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
              hotelList.length,
              (index) {
                final hotelDataMap = hotelList[index];
                return Padding(
                  padding: EdgeInsets.only(
                    top: index == 0 ? 20 : 0,
                    bottom: 20,
                  ),
                  child: GestureDetector(
                    onTap: () => _navigateToHotelDetail(context, index),
                    child: Hotel(hotelDataMap),
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
