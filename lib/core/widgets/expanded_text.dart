import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/is_expanded_provider.dart';
import '../res/style_res.dart';

class ExpandedText extends ConsumerWidget {
  final String _text;
  final int _maxLines;

  const ExpandedText({
    super.key,
    required String text,
    required int maxLines,
  })  : _text = text,
        _maxLines = maxLines;

  void _toggleValue(WidgetRef ref) {
    ref.read(isExpandedProvider.notifier).toggleValue();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isExpanded = ref.watch(isExpandedProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _text,
          maxLines: isExpanded ? null : _maxLines,
          overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
        ),
        GestureDetector(
          onTap: () => _toggleValue(ref),
          child: Text(
            isExpanded ? 'less' : 'more',
            style: StyleRes.textStyle.copyWith(
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
