import 'package:flutter/material.dart';

import 'color_res.dart';

@immutable
class StyleRes {
  // TextStyles
  static const textStyle = TextStyle(
    fontSize: 16,
    color: ColorRes.textColor,
    fontWeight: FontWeight.w500,
  );
  static const headLineStyle1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: ColorRes.textColor,
  );
  static const headLineStyle2 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: ColorRes.textColor,
  );
  static const headLineStyle3 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
  static const headLineStyle4 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  const StyleRes._();
}
