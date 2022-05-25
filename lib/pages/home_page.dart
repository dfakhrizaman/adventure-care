import 'package:adventure_care/controllers/home_controller.dart';
import 'package:adventure_care/widgets/colors.dart';
import 'package:adventure_care/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:sizer/sizer.dart';

List<String> outfits = [
  'assets/outfit_1.png',
  'assets/outfit_2.png',
  'assets/outfit_3.png',
];

List<String> hairs = [
  'assets/hair_1.png',
  'assets/hair_2.png',
  'assets/hair_3.png',
];

//TODO: ^ Change list of image locations to list of image widgets to reduce load time

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.peach,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Stack(
                children: const [
                  Image(
                    image: AssetImage('assets/dummy.png'),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  children: [
                    const HeaderText1(content: 'Andhika'),
                    FAProgressBar(
                      currentValue: 80,
                      displayText: '%',
                      size: 30,
                      progressColor: ColorPalette.green,
                      backgroundColor: ColorPalette.dark,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
