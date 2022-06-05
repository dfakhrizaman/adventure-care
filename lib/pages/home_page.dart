import 'package:adventure_care/controllers/home_controller.dart';
import 'package:adventure_care/colors.dart';
import 'package:adventure_care/widgets/tabs/activities_page.dart';
import 'package:adventure_care/widgets/tabs/character_page.dart';
import 'package:adventure_care/widgets/tabs/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
//TODO: Use caching for assets

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: homeController.tabIndex == 2
              ? ColorPalette.yellowLight
              : ColorPalette.peach,
          body: SafeArea(
            //TODO: Add Row here for streak and money

            child: IndexedStack(
              index: controller.tabIndex,

              //* List of tabs
              children: const [
                CharacterPage(),
                ActivitiesPage(),
                ShopPage(),
              ],
            ),
          ),

          //* Navbar
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: ColorPalette.backgroundLight,
              border: Border(
                top: BorderSide(color: ColorPalette.dark, width: 5.0),
              ),
            ),
            child: BottomNavigationBar(
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    homeController.tabIndex == 0
                        ? Icons.person
                        : Icons.person_outline,
                  ),
                  label: 'Karakter',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    homeController.tabIndex == 1
                        ? Icons.task
                        : Icons.task_outlined,
                  ),
                  label: 'Kegiatan',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    homeController.tabIndex == 2
                        ? Icons.shopping_basket
                        : Icons.shopping_basket_outlined,
                  ),
                  label: 'Toko',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
