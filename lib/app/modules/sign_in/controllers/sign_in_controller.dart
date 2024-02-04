import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:yyc_scan/app/routes/app_pages.dart';
import 'package:yyc_scan/app/services/auth.service.dart';

class SignInController extends GetxController {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  Future<void> login(String email, String password) async {
    EasyLoading.show(status: 'Logging in...'.tr);
    try {
      await Get.find<AuthService>().signInWithUserAndPassword(email, password);
    } on FirebaseAuthException catch (e) {
      EasyLoading.showError('Invalid credentials. Please try again later.');
    }
  }

  Future<void> loginViaGoogle() async {
    EasyLoading.show(status: 'Logging in...'.tr);
    try {
      await Get.find<AuthService>().signInWithGoogle();
    } on FirebaseAuthException catch (e) {
      EasyLoading.showError('Invalid credentials. Please try again later.');
    }
  }
}
