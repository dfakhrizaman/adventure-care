import 'package:adventure_care/controllers/signup_controller.dart';
import 'package:adventure_care/pages/home_page.dart';
import 'package:adventure_care/widgets/buttons.dart';
import 'package:adventure_care/widgets/colors.dart';
import 'package:adventure_care/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

final SignUpController signUpController = Get.put(SignUpController());

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);

  final SignUpController signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    List<Column> signupPrompts = [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderText2(content: 'Berapa nomor teleponmu?'),
          TextField(
            decoration: const InputDecoration(hintText: 'contoh: 08xxxxxx'),
            onChanged: (value) => signUpController.updatePhone(value),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderText2(content: 'Halo! Namaku'),
          TextField(
            decoration: const InputDecoration(hintText: 'Siapa namamu?'),
            onChanged: (value) => signUpController.updateName(value),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderText2(content: 'Aku adalah seorang...'),
          const SizedBox(height: 28),
          Row(
            children: [
              Expanded(
                child: ButtonLarge2(
                  text: 'Laki-laki',
                  onPress: () {
                    signUpController.updateSex('laki-laki');
                  },
                ),
              ),
              const SizedBox(width: 18),
              Expanded(
                child: ButtonLarge2(
                  text: 'Perempuan',
                  onPress: () {
                    signUpController.updateSex('perempuan');
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderText2(content: 'Aku lahir pada tanggal...'),
          TextField(
            decoration: const InputDecoration(hintText: 'DD/MM/YY'),
            keyboardType: TextInputType.datetime,
            onChanged: (value) => signUpController.updateBirth(value),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderText2(content: 'Berat badanku...'),
          Row(
            children: [
              SizedBox(
                width: 15.w,
                child: TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) => signUpController.updateWeight(value),
                ),
              ),
              const HeaderText2(content: "kg"),
            ],
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderText2(content: 'Tinggi badanku...'),
          Row(
            children: [
              SizedBox(
                width: 15.w,
                child: const TextField(),
              ),
              const HeaderText2(content: "cm"),
            ],
          ),
        ],
      ),

      //* Confirmation Prompt

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderText2(content: 'Nomor Telepon'),
          Obx(
            () => TextFormField(
              autofocus: false,
              initialValue: signUpController.getPhone(), // <-- SEE HERE
            ),
          ),
          const HeaderText2(content: 'Nama'),
          const TextField(
            decoration: InputDecoration(hintText: 'Siapa namamu?'),
          ),
          const HeaderText2(content: 'Jenis kelamin'),
          const TextField(
            decoration: InputDecoration(hintText: 'Siapa namamu?'),
          ),
          const HeaderText2(content: 'Tanggal lahir'),
          const TextField(
            decoration: InputDecoration(hintText: 'Siapa namamu?'),
          ),
          const HeaderText2(content: 'Berat badan'),
          const TextField(
            decoration: InputDecoration(hintText: 'Siapa namamu?'),
          ),
          const HeaderText2(content: 'Tinggi badan'),
          const TextField(
            decoration: InputDecoration(hintText: 'Siapa namamu?'),
          ),
        ],
      ),
    ];

    return Scaffold(
      backgroundColor: ColorPalette.backgroundLight,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigate_next),
        onPressed: () {
          // Increment page index(move to next page). index == last ? open OTP verification

          if (signUpController.getIndex() == 6) {
            Get.back();
            Get.to(() => HomePage());
          }
          signUpController.incrementIndex();
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: const HeaderText1(content: 'Data Diri'),
              ),
              Obx(
                () => signupPrompts[signUpController.getIndex()],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
