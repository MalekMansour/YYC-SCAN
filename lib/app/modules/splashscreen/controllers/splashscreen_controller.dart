import 'dart:async';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:yyc_scan/app/services/auth.service.dart';

class SplashscreenController extends GetxController {
  VideoPlayerController? vidController =
      VideoPlayerController.asset("assets/images/splash_video.mp4");
  RxBool visible = RxBool(false);

  @override
  void onInit() {
    super.onInit();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    vidController?.initialize().then((_) {
      vidController?.setLooping(false);
      Timer(Duration(milliseconds: 100), () {
        vidController?.play();
        visible.value = true;
      });
    });

    Future.delayed(Duration(seconds: 7), () {
      Get.find<AuthService>().checkIfLoggedIn();
    });
  }
}
