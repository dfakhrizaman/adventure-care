import 'package:adventure_care/models/account.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  var currentPageIndex = 0.obs;

  // var phoneNumber = 0.obs; // int
  // var name = ''.obs;
  // var sex = ''.obs;
  // var birthDate = ''.obs;
  // var weight = 0.obs; // int
  // var height = 0.obs; // int

  var newAccount = Account().obs;

  void incrementIndex() {
    currentPageIndex.value != 6
        ? currentPageIndex.value++
        : currentPageIndex.value = 0;

    // print(currentPageIndex.value);
  }

  //* Phone
  void updatePhone(newValue) {
    newAccount.value.phoneNumber = newValue;
  }

  String getPhone() {
    return newAccount.value.phoneNumber;
  }

  //* Name
  void updateName(newValue) {
    newAccount.value.name = newValue;
  }

  String getName() {
    return newAccount.value.name;
  }

  //* Sex
  void updateSex(newValue) {
    newAccount.value.sex = newValue;
  }

  String getSex() {
    return newAccount.value.sex;
  }

  //* Birthdate
  void updateBirth(newValue) {
    newAccount.value.birthDate = newValue;
  }

  String getBirth() {
    return newAccount.value.birthDate;
  }

  //* Weight
  void updateWeight(newValue) {
    newAccount.value.weight = newValue;
  }

  int getWeight() {
    return newAccount.value.weight;
  }

  //* Height
  void updateHeight(newValue) {
    newAccount.value.height = newValue;
  }

  int getHeight() {
    return newAccount.value.height;
  }

  int getIndex() {
    return currentPageIndex.value;
  }
}
