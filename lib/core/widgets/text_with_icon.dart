import 'package:flutter/material.dart';

import '../res/style_res.dart';
import '../res/color_res.dart';

class TextWithIcon extends StatelessWidget {
  final String _text;
  final IconData _iconData;

  const TextWithIcon({
    super.key,
    required String text,
    required IconData iconData,
  })  : _text = text,
        _iconData = iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        // color: Colors.grey.shade300,
        color: ColorRes.tabBarBgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(_iconData),
          const SizedBox(width: 10),
          Text(_text, style: StyleRes.textStyle),
        ],
      ),
    );
  }
}
