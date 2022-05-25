import 'package:adventure_care/controllers/otp_controller.dart';
import 'package:adventure_care/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinField extends StatelessWidget {
  final OtpController otpController = Get.put(OtpController());

  PinField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      // obscureText: false,
      keyboardType: TextInputType.number,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        borderWidth: 4,
        fieldHeight: 50,
        fieldWidth: 50,
        activeFillColor: Colors.white,
        inactiveColor: ColorPalette.dark,
        activeColor: ColorPalette.dark,
        selectedColor: ColorPalette.dark,
        inactiveFillColor: Colors.white,
        selectedFillColor: Colors.white,
      ),
      // animationDuration: Duration(milliseconds: 300),
      backgroundColor: ColorPalette.white,
      cursorColor: ColorPalette.dark,
      enableActiveFill: true,
      // onCompleted: (v) {
      //   print("Completed");
      // },
      onChanged: (value) {
        otpController.changePin(value);
      },
      beforeTextPaste: (text) {
        // print("Allowing to paste $text");
        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
        //but you can show anything you want here, like your pop up saying wrong paste format or etc
        return true;
      },
    );
  }
}
