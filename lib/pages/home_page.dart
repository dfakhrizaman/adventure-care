import 'package:adventure_care/controllers/home_controller.dart';
import 'package:adventure_care/colors.dart';
import 'package:adventure_care/pages/shop_page.dart';
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
      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: Material(
          type: MaterialType.transparency,
          child: Ink(
            decoration: BoxDecoration(
              border: Border.all(color: ColorPalette.dark, width: 5.0),
              color: ColorPalette.backgroundLight,
              shape: BoxShape.circle,
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(500.0),
              onTap: () {},
              child: const Icon(
                Icons.saved_search_outlined,
                size: 35,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: ColorPalette.peach,
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {
                          Get.to(() => ShopPage());
                        },
                        icon: Icon(Icons.shopping_cart_rounded)),
                  ),
                  // Stack for Character
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
                      children: const [
                        HeaderText1(content: 'Andhika'),
                        ProgressBar(),
                      ],
                    ),
                  ),
                ],
              ),

              //* Bottom Sheet
              bottomDetailsSheet(),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomDetailsSheet() {
    const double minSize = 0.35;

    return DraggableScrollableSheet(
      initialChildSize: minSize,
      minChildSize: minSize,
      maxChildSize: 0.75,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: ColorPalette.backgroundLight,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            border: Border.all(
              color: ColorPalette.dark,
              width: 5,
            ),
          ),
          child: ListView(
            controller: scrollController,
            children: const [
              ListTile(
                title: Text(
                  "NAME",
                ),
                subtitle: Text('ddd'),
              ),
              ListTile(
                title: Text(
                  "NAME",
                ),
                subtitle: Text('ddd'),
              ),
              ListTile(
                title: Text(
                  "NAME",
                ),
                subtitle: Text('ddd'),
              ),
              ListTile(
                title: Text(
                  "NAME",
                ),
                subtitle: Text('ddd'),
              ),
              ListTile(
                title: Text(
                  "NAME",
                ),
                subtitle: Text('ddd'),
              ),
              ListTile(
                title: Text(
                  "NAME",
                ),
                subtitle: Text('ddd'),
              ),
              ListTile(
                title: Text(
                  "NAME",
                ),
                subtitle: Text('ddd'),
              ),
              ListTile(
                title: Text(
                  "NAME",
                ),
                subtitle: Text('ddd'),
              ),
              ListTile(
                title: Text(
                  "NAME",
                ),
                subtitle: Text('ddd'),
              ),
              ListTile(
                title: Text(
                  "NAME",
                ),
                subtitle: Text('ddd'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorPalette.backgroundLight,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(
          color: ColorPalette.dark,
          width: 5,
        ),
      ),
      child: FAProgressBar(
        currentValue: 80,
        displayText: '%',
        size: 35,
        progressColor: ColorPalette.green,
        backgroundColor: ColorPalette.peach,
        border: Border.all(
          color: ColorPalette.peach,
          width: 2,
        ),
      ),
    );
  }
}
