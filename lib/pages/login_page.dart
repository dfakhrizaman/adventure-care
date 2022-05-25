import 'package:adventure_care/pages/otp_page.dart';
import 'package:adventure_care/pages/signup_page.dart';
import 'package:adventure_care/widgets/buttons.dart';
import 'package:adventure_care/widgets/colors.dart';
// import 'package:adventure_care/widgets/colors.dart';
import 'package:adventure_care/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                    const HeaderText2(
                      content: 'Masukkan nomor telepon',
                    ),
                    const TextField(
                      decoration:
                          InputDecoration(hintText: 'contoh: 08xxxxxxx'),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 50),
                    ButtonLarge1(
                      text: 'Masuk',
                      onPress: () {
                        Get.to(() => OtpPage());
                      },
                    ),
                    const SizedBox(height: 26),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => SignupPage());
                      },
                      child: const HeaderText3(
                          content: 'Daftar dengan no. telepon'),
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
