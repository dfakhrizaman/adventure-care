import 'package:flutter/material.dart';
import 'package:adventure_care/colors.dart';

const palette = ColorPalette;

class HeaderText1 extends StatelessWidget {
  const HeaderText1({Key? key, required this.content}) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 30,
        color: ColorPalette.dark,
      ),
    );
  }
}

class HeaderText2 extends StatelessWidget {
  const HeaderText2({
    Key? key,
    required this.content,
    this.color = const Color(0xFF363332),
  }) : super(key: key);

  final String content;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 18,
        color: color,
      ),
    );
  }
}

class HeaderText3 extends StatelessWidget {
  const HeaderText3({
    Key? key,
    required this.content,
    this.color = const Color(0xFF363332),
  }) : super(key: key);

  final String content;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 14,
        color: color,
      ),
    );
  }
}

class HeaderText4 extends StatelessWidget {
  const HeaderText4({
    Key? key,
    required this.content,
    this.color = const Color(0xFF363332),
    this.alignment = TextAlign.start,
  }) : super(key: key);

  final String content;
  final Color color;
  final TextAlign alignment;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: alignment,
      style: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 12,
        color: color,
      ),
    );
  }
}

class BodyText extends StatelessWidget {
  const BodyText({
    Key? key,
    required this.content,
    this.color = const Color(0xFF363332),
    this.alignment = TextAlign.start,
  }) : super(key: key);

  final String content;
  final TextAlign alignment;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: alignment,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 12,
        color: color,
      ),
    );
  }
}
