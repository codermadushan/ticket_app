import 'package:flutter/material.dart';

class DynamicDashedLine extends StatelessWidget {
  final double _dashWidth;
  final double _dashHeight;

  const DynamicDashedLine({
    super.key,
    required double dashWidth,
    required double dashHeight,
  })  : _dashWidth = dashWidth,
        _dashHeight = dashHeight;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            constraints.maxWidth ~/ (2 * _dashWidth),
            (index) {
              return ColoredBox(
                color: Colors.white,
                child: SizedBox(
                  width: _dashWidth,
                  height: _dashHeight,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
