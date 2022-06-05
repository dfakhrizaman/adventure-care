import 'package:adventure_care/widgets/progress_bar.dart';
import 'package:adventure_care/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Stack for Character
        Stack(
          children: const [
            Image(
              image: AssetImage('assets/dummy.png'),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: const [
              HeaderText1(content: 'Andhika'),
              ProgressBar(),
            ],
          ),
        ),
      ],
    );
  }
}
