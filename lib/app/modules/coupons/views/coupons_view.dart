import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/coupons_controller.dart';

class CouponsView extends GetView<CouponsController> {
  const CouponsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CouponsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CouponsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
