import 'package:flutter/material.dart';

import '../res/style_res.dart';
import '../res/color_res.dart';

class DoubleText extends StatelessWidget {
  final String _bigText;
  final String _smallText;
  final VoidCallback _onPressed;

  const DoubleText({
    super.key,
    required String bigText,
    required String smallText,
    required VoidCallback onPressed,
  })  : _bigText = bigText,
        _smallText = smallText,
        _onPressed = onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(_bigText, style: StyleRes.headLineStyle2),
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: _onPressed,
          child: Text(
            _smallText,
            style: StyleRes.textStyle.copyWith(
              color: ColorRes.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
