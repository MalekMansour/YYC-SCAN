import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yyc_scan/app/modules/activities/controllers/activities_controller.dart';
import 'package:yyc_scan/app/modules/home/controllers/home_controller.dart';
import 'package:yyc_scan/app/modules/place_details/views/place_details_view.dart';

class ServicesCard extends GetView<ActivitiesController> {
  final int? length;
  const ServicesCard({super.key, this.length});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        width: Size.infinite.width,
        child: Obx(
          () => controller.services.length > 1
              ? Column(
                  children: [
                    for (int index = 0;
                        index < (length ?? controller.services.length);
                        index++)
                      InkWell(
                        onTap: () {
                          Get.to(PlaceDetailsView(
                              bus: controller.services[index]));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 2),
                          child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(45, 45, 45, 1),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Row(
                                  children: [
                                    //Image
                                    Image.asset(
                                        'assets/images/sample_business.png'),
                                    const SizedBox(width: 10),
                                    //Text Area
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          //Row 1,Text
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                //Name
                                                Expanded(
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                            controller
                                                                    .services
                                                                    .value[
                                                                        index]
                                                                    .businessName ??
                                                                'Business Name',
                                                            style: const TextStyle(
                                                                fontSize: 20,
                                                                letterSpacing:
                                                                    0.5,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600)),
                                                      ),
                                                      const SizedBox(width: 7),
                                                      Container(
                                                        height: 15,
                                                        width: 15,
                                                        decoration: const BoxDecoration(
                                                            image: DecorationImage(
                                                                image: AssetImage(
                                                                    'assets/images/sample-resto-icon.png'))),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                //StarImg,Rating
                                                Row(
                                                  children: [
                                                    Icon(Icons
                                                        .star_border_outlined),
                                                    Text(
                                                        '${controller.services[index].rating?.toInt()}/5',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            letterSpacing: 0.5,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                  ],
                                                ),
                                              ]),
                                          Text(
                                              controller.services[index]
                                                      .description ??
                                                  'Description',
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                              controller.services[index]
                                                      .address ??
                                                  'Address',
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis),
                                          const SizedBox(height: 4),
                                          Row(
                                            children: [
                                              // Container(
                                              //   padding: EdgeInsets.symmetric(
                                              //       horizontal: 10, vertical: 4),
                                              //   decoration: BoxDecoration(
                                              //       borderRadius:
                                              //           BorderRadius.circular(10),
                                              //       color: Colors.white),
                                              //   child: Text(
                                              //       controller.services[index]
                                              //               .businessType ??
                                              //           'Type',
                                              //       style: TextStyle(
                                              //         color: Colors.black,
                                              //         fontSize: 10,
                                              //       ),
                                              //       maxLines: 2,
                                              //       overflow: TextOverflow.ellipsis),
                                              // ),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10,
                                                    vertical: 4),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Colors.white),
                                                child: Text(
                                                    controller.services[index]
                                                            .category ??
                                                        'Category',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10,
                                                    ),
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ),
                      )
                  ],
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Loading...'),
                ),
        ),
      ),
    );
  }
}
