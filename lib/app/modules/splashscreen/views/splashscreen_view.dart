import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({Key? key}) : super(key: key);
  _getVideoBackground() {
    return Obx(
      () => AnimatedOpacity(
        opacity: controller.visible.value ? 1.0 : 0.0,
        duration: Duration(milliseconds: 1000),
        child: Center(
          child: Transform.scale(
            scale: 1.25,
            child: AspectRatio(
                aspectRatio: 1080 / 1920,
                child: VideoPlayer(controller.vidController!)),
          ),
        ),
      ),
    );
  }

  _getBackgroundColor() {
    return Container(color: Colors.transparent //.withAlpha(120),
        );
  }

  _getContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getVideoBackground(),
    );
  }
}
