import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:yyc_scan/app/global_widgets/scaffold/scaffold.widget.dart';

import '../controllers/scan_controller.dart';

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
                  onDetect: (capture) {
                    final List<Barcode> barcodes = capture.barcodes;
                    final Uint8List? image = capture.image;
                    for (final barcode in barcodes) {
                      debugPrint('Barcode found! ${barcode.rawValue}');
                    }
                  },
                ),
              ),
            ),
          ),
        ));
  }
}
