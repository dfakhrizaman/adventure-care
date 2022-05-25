import 'package:adventure_care/widgets/colors.dart';
import 'package:adventure_care/widgets/texts.dart';
import 'package:flutter/material.dart';

class ButtonLarge1 extends StatelessWidget {
  const ButtonLarge1({
    required this.text,
    required this.onPress,
    Key? key,
  }) : super(key: key);

  final String text;

  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        primary: ColorPalette.yellow,
        minimumSize: const Size.fromHeight(60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            width: 4.0,
            color: ColorPalette.dark,
          ),
        ),
      ),
      onPressed: () {
        onPress();
      },
      child: HeaderText1(content: text),
    );
  }
}

class ButtonLarge2 extends StatelessWidget {
  const ButtonLarge2({
    required this.text,
    required this.onPress,
    Key? key,
  }) : super(key: key);

  final String text;

  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        primary: ColorPalette.yellow,
        minimumSize: const Size.fromHeight(60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            width: 4.0,
            color: ColorPalette.dark,
          ),
        ),
      ),
      onPressed: () {
        onPress();
      },
      child: HeaderText2(content: text),
    );
  }
}
