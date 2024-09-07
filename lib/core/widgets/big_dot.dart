import 'package:flutter/material.dart';

class BigDot extends StatelessWidget {
  final Color _color;

  const BigDot({
    super.key,
    required Color color,
  }) : _color = color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2.5, color: _color),
      ),
    );
  }
}
