import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:get/get.dart';
import 'package:yyc_scan/app/core/theme/app_color.dart';
import 'package:yyc_scan/app/global_widgets/images/logo.widget.dart';
import 'package:yyc_scan/app/routes/app_pages.dart';
import 'package:yyc_scan/app/services/auth.service.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        primary: false,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.LANGUAGE);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.language),
                      Text('Change language'.tr)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const LogoWidget(
                  width: 200,
                ),
                const SizedBox(
                  height: 60,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Back!'.tr,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Please sign in to continue'.tr,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                FormBuilder(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      FormBuilderTextField(
                        name: 'email',
                        decoration: InputDecoration(
                          focusColor: Colors.white,
                          labelStyle: TextStyle(color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          labelText: 'Email'.tr,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.email(),
                        ]),
                      ),
                      const SizedBox(height: 15),
                      FormBuilderTextField(
                        name: 'password',
                        decoration: InputDecoration(
                            focusColor: Colors.white,
                            labelStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            labelText: 'Password'.tr),
                        obscureText: true,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                        ]),
                      ),
                      const SizedBox(height: 30),
                      Text('Forgot Password?'.tr),
                      const SizedBox(height: 30),
                      InkWell(
                        onTap: () {
                          if (controller.formKey.currentState!
                              .saveAndValidate()) {
                            Map<String, dynamic>? data =
                                controller.formKey.currentState?.value;
                            controller.login(data?['email'], data?['password']);
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              gradient: AppColors().linearGradient),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          child: Text(
                            'LOGIN'.tr,
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'OR'.tr,
                        style: TextStyle(fontSize: 10),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              controller.loginViaGoogle();
                            },
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration:
                                  BoxDecoration(color: AppColors().grey),
                              child: Text('G'),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                // FilledButton(
                //     onPressed: () async {

                //     },
                //     child: Text('Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
