import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yyc_scan/app/core/theme/text_theme.dart';
import 'package:yyc_scan/app/global_widgets/images/logo.widget.dart';
import 'package:yyc_scan/app/routes/app_pages.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Size.infinite.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 250, child: LogoWidget(width: 300)),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: Size.infinite.width,
                      alignment: Alignment.centerLeft,
                      child: const Text("Create Account", style: title),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: SizedBox(
                        height: 50,
                        width: Size.infinite.width,
                        child: const TextField(
                            enableSuggestions: false,
                            autocorrect: false,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Username')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: SizedBox(
                        height: 50,
                        width: Size.infinite.width,
                        child: const TextField(
                            enableSuggestions: false,
                            autocorrect: false,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Email')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: SizedBox(
                        height: 50,
                        width: Size.infinite.width,
                        child: const TextField(
                            enableSuggestions: false,
                            autocorrect: false,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Pasword')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: SizedBox(
                        height: 50,
                        width: Size.infinite.width,
                        child: const TextField(
                            enableSuggestions: false,
                            autocorrect: false,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Confirm Password')),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: Size.infinite.width,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        margin: const EdgeInsets.only(right: 8.0),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(133, 83, 158, 1)),
                        child:
                            Checkbox(value: true, onChanged: (bool? value) {}),
                      ),
                      const Text("I agree to"),
                      const Text(" the terms and conditions",
                          style:
                              TextStyle(color: Color.fromRGBO(133, 83, 158, 1)))
                    ],
                  ),
                ),
              ),
              Container(
                  height: 35,
                  width: 120,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(220, 36, 48, 1),
                      Color.fromRGBO(123, 67, 151, 1)
                    ]),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.transparent)),
                      child: const Text("SIGN UP",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(255, 255, 255, 1))))),
              InkWell(
                onTap: () {
                  Get.offAndToNamed(Routes.SIGN_IN);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  width: Size.infinite.width,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Have an account? "),
                      Text("Sign In",
                          style:
                              TextStyle(color: Color.fromRGBO(133, 83, 158, 1)))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
