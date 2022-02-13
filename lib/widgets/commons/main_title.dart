import 'package:flutter/material.dart';
import 'package:main/constants.dart';

class MainTitle extends StatelessWidget {
  final String text;
  final double size;

  const MainTitle({
    Key? key,
    required this.text,
    this.size = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.clip,
      style: TextStyle(
        color: kMainMaterialColor,
        fontWeight: FontWeight.w700,
        fontSize: size,
      ),
    );
  }
}
