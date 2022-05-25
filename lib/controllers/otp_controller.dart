import 'package:get/get.dart';

class OtpController extends GetxController {
  var otpPin = ''.obs;

  void changePin(newValue) {
    otpPin.value = newValue;

    // print(otpPin.value);
  }

  void submitPin() {
    // print('submitted ${otpPin.value}');
  }
}
