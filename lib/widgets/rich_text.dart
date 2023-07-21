import 'package:flutter/material.dart';
import 'package:jiitak/widgets/responsive.dart';

class Richtext extends StatelessWidget {
  final String text;
  final String? text2;

  final TextStyle? style;
  Richtext({super.key, required this.text, this.style, this.text2});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: "店舗名",
          style: TextStyle(
              fontSize: R.sw(14, context), color: const Color(0xff4B4948))),
      const TextSpan(text: "*", style: TextStyle(color: Colors.red)),
      TextSpan(
          text: text2,
          style:
              TextStyle(color: Color(0xff9C9896), fontSize: R.sw(14, context))),
    ]));
  }
}
