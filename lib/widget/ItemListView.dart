import 'package:flutter/material.dart';

import '../constants/ColorUtility.dart';
import '../constants/PaddingUtility.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: PaddingUtility().listMargin,
        child: Text(
          title,
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: ColorUtility().titleTextColor,
              ),
        ));
  }
}
