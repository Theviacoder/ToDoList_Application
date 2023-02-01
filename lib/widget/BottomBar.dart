import 'package:flutter/material.dart';

import '../constants/ColorUtility.dart';
import '../constants/PaddingUtility.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
    required TextEditingController todoController,
  }) : _todoController = todoController;

  final TextEditingController _todoController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: PaddingUtility().bottomBarMargin,
        padding: PaddingUtility().bottomBarTextfieldPadding,
        decoration: const BoxDecoration(
          color: tdwhite,
          boxShadow: [
            BoxShadow(
              color: tdGrey,
              offset: Offset(0.0, 0.0),
              blurRadius: 10.0,
              spreadRadius: 0.0,
            ),
          ],
        ),
        child: TextField(
          controller: _todoController,
          decoration: InputDecoration(hintText: "Add a new todo item", border: InputBorder.none),
        ),
      ),
    );
  }
}
