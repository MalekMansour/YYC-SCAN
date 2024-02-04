import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yyc_scan/app/modules/activities/controllers/activities_controller.dart';

class MapsWidget extends GetView<ActivitiesController> {
  const MapsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 30),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: controller.kGooglePlex,
          // ignore: no_leading_underscores_for_local_identifiers
          onMapCreated: (GoogleMapController _controller) {
            controller.mapsController.complete(_controller);
          },
        ),
      ),
    );
  }
}
