import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../controllers/scan_controller.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:yyc_scan/app/global_widgets/scaffold/scaffold.widget.dart';






class ScanView extends GetView<ScanController> {
  const ScanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
        scaffoldKey: controller.scaffoldKey,
        child: Center(
          child: AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: MobileScanner(
                  // fit: BoxFit.contain,
                  onDetect: (capture) async {
                    EasyLoading.show(status: 'You have successfully scanned Olympic Park! You have gained 10 points');
await Future.delayed(Duration(seconds: 6));
                  },
                ),
              ),
            ),
          ),
        ));
  }
}
