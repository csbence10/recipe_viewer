import 'package:flutter/material.dart';

class BottomShadowView extends StatelessWidget {
  const BottomShadowView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(0, -10),
            blurRadius: 40,
            spreadRadius: 30,
          ),
        ],
      ),
    );
  }
}
