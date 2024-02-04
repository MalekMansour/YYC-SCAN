import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:openapi/api.dart';
import 'package:yyc_scan/app/core/theme/app_color.dart';

import '../controllers/place_details_controller.dart';

class PlaceDetailsView extends GetView<PlaceDetailsController> {
  final String? base64Image;
  final Business bus;
  const PlaceDetailsView({Key? key, this.base64Image, required this.bus})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Details'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: AppColors().linearGradient),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 200,
                        height: 200,
                        child: base64Image != null
                            ? Image.memory(
                                base64Decode(
                                  base64Image?.split(',')[1] ?? '',
                                ),
                                width: 150,
                                fit: BoxFit.cover,
                              )
                            : Image.asset(
                                'assets/images/sample_business.png',
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                      ),
                    )),
              ],
            ),
            Text(
              bus.businessName ?? 'Business Name',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
            ),
            Text(
              bus.description ?? 'Description',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(Icons.star_border),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '${bus.rating?.toInt() ?? 0}/5',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.location_pin),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      bus.address ?? 'Address',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: AppColors().grey,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [Text('Available points: '), Text('780')],
                    ),
                    Row(
                      children: [Text('Visitors: '), Text('1531')],
                    ),
                    Row(
                      children: [Text('Points for Visiting: '), Text('10')],
                    )
                  ]),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: AppColors().grey,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text('Possible activities: '),
                        Text('Board games, food, etc.')
                      ],
                    ),
                    Row(
                      children: [
                        Text('Good for: '),
                        Text('Friends and Family')
                      ],
                    ),
                  ]),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'User Reviews',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: AppColors().grey,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              child: Column(
                children: [
                  Row(children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('John Doe'),
                        Text('Really nice. Would recommend')
                      ],
                    )
                  ]),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: AppColors().grey,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              child: Column(
                children: [
                  Row(children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('Jane Doe'), Text('It was fun!')],
                    )
                  ]),
                ],
              ),
            )
          ],
        ));
  }
}
