import 'package:flutter/material.dart';

import '../res/color_res.dart';
import '../res/style_res.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> _hotelDataMap;

  const Hotel(
    Map<String, dynamic> hotelDataMap, {
    super.key,
  }) : _hotelDataMap = hotelDataMap;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorRes.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: screenWidth * 0.6,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/${_hotelDataMap['image']}'),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            _hotelDataMap['place'],
            style: StyleRes.headLineStyle1.copyWith(color: ColorRes.kakiColor),
          ),
          const SizedBox(height: 10),
          Text(
            _hotelDataMap['destination'],
            style: StyleRes.headLineStyle3.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            '\$${_hotelDataMap['price']} / night',
            style: StyleRes.headLineStyle1.copyWith(color: ColorRes.kakiColor),
          ),
        ],
      ),
    );
  }
}
