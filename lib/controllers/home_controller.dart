import 'package:get/get.dart';

class HomeController extends GetxController {
  var outfitIndex = 0.obs;
  var hairIndex = 0.obs;

  //* Outfit Controllers
  void incrementOutfitIndex() {
    outfitIndex.value != 2 ? outfitIndex.value++ : outfitIndex.value = 0;
  }

  void decrementOutfitIndex() {
    outfitIndex.value != 0 ? outfitIndex.value-- : outfitIndex.value = 2;
  }

  int getOutfitIndex() {
    return outfitIndex.value;
  }

  //* Hair Controllers
  void incrementHairIndex() {
    hairIndex.value != 2 ? hairIndex.value++ : hairIndex.value = 0;
  }

  void decrementHairIndex() {
    hairIndex.value != 0 ? hairIndex.value-- : hairIndex.value = 2;
  }

  int getHairIndex() {
    return hairIndex.value;
  }
  //* END Outfit Controllers

  //* Page Controller
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
