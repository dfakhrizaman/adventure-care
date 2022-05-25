import 'package:adventure_care/controllers/otp_controller.dart';
import 'package:adventure_care/pages/home_page.dart';
import 'package:adventure_care/widgets/buttons.dart';
import 'package:adventure_care/widgets/colors.dart';
import 'package:adventure_care/widgets/pin_field.dart';
import 'package:adventure_care/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OtpPage extends StatelessWidget {
  OtpPage({Key? key}) : super(key: key);

  final OtpController otpController = Get.put(OtpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: 45.h,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16), // if you need this
                side: BorderSide(
                  color: ColorPalette.dark,
                  width: 4,
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 6.w),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const HeaderText2(
                      content: 'Login',
                    ),
                    const SizedBox(height: 20),
                    PinField(),
                    const SizedBox(height: 50),
                    ButtonLarge1(
                      text: 'Verifikasi',
                      onPress: () {
                        otpController.submitPin();
                        Get.back();
                        Get.to(() => HomePage());
                      },
                    ),
                    const SizedBox(height: 26),
                    GestureDetector(
                      onTap: () {
                        Get.defaultDialog(
                          title: "OTP sudah dikirim ulang",
                          middleText: "Cek SMSmu!",
                        );
                      },
                      child: const HeaderText3(content: 'Kirim ulang kode OTP'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
