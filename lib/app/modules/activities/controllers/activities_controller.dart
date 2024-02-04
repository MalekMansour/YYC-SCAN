import 'dart:async';

import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:openapi/api.dart';
import 'package:yyc_scan/app/core/theme/app_color.dart';

class ActivitiesController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  final Completer<GoogleMapController> mapsController =
      Completer<GoogleMapController>();

  CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(51.0544, -114.0852),
    zoom: 14.4746,
  );

  CameraPosition kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  BusinessesApi businessesApi = BusinessesApi(Get.find<ApiClient>());
  RxList<Business> allBusinesses = RxList<Business>();
  RxMap<MarkerId, Marker> markers = RxMap<MarkerId, Marker>();
  CustomInfoWindowController customInfoWindowController =
      CustomInfoWindowController();

  final count = 0.obs;
  RxBool isMapView = RxBool(true);

  Future<void> getActivities() async {
    allBusinesses.value =
        await businessesApi.businessesGetAllBusinessesGet() ?? [];

    allBusinesses.forEach((element) {
      double lat = double.parse(element.coordinate!.split(',')[0]);
      double long = double.parse(element.coordinate!.split(',')[1]);
      final marker = Marker(
          markerId: MarkerId(element.businessId.toString()),
          position: LatLng(lat, long),
          // icon: BitmapDescriptor.,
          onTap: () {
            customInfoWindowController.addInfoWindow!(
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/sample_business.png'),
                        const SizedBox(
                          width: 6,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star_border),
                                Text(
                                  '${element.rating.toString()}/5',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text('Visitors: ${element.visited.toString()}'),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text('Points for visiting: ${10}'),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: AppColors().linearGradient),
                              child: Text('See more...'.tr),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          element.businessName ?? 'Business Name',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            height: 0.8,
                          ),
                        ),
                        Icon(Icons.dining)
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      element.description ?? 'Description',
                      maxLines: 2,
                      style: TextStyle(
                        height: 0.8,
                      ),
                    )
                  ],
                ),
              ),
              LatLng(lat, long),
            );
          });
      markers[MarkerId(element.businessId.toString())] = marker;
    });
  }

  @override
  void onInit() {
    getActivities();
    super.onInit();
  }
}
