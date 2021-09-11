import 'package:flutter/material.dart';

class BottomShadowView extends StatelessWidget {
  const BottomShadowView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shadowColor = Theme.of(context).shadowColor;
    return Container(
      height: 0,
      decoration: BoxDecoration(
        color: shadowColor,
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            offset: Offset(0, -10),
            blurRadius: 40,
            spreadRadius: 30,
          ),
        ],
      ),
    );
  }
}
