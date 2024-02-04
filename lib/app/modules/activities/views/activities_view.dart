import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:slide_indexed_stack/slide_indexed_stack.dart';
import 'package:yyc_scan/app/core/theme/app_color.dart';
import 'package:yyc_scan/app/global_widgets/scaffold/scaffold.widget.dart';
import 'package:yyc_scan/app/modules/activities/widgets/maps.widget.dart';

import '../controllers/activities_controller.dart';

class ActivitiesView extends GetView<ActivitiesController> {
  const ActivitiesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
        backgroundElementPadding: const EdgeInsets.only(top: 200),
        scaffoldKey: controller.scaffoldKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(children: [
            TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  hintText: 'Search...',
                  suffixIcon: const Icon(Icons.search),
                  fillColor: Theme.of(context).colorScheme.surface,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30))),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Obx(
                () => Column(
                  children: [
                    SizedBox(
                      width: Size.infinite.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30)),
                                onTap: () {
                                  controller.isMapView.value = true;
                                },
                                child: Container(
                                    width: 120,
                                    height: 40,
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    decoration: BoxDecoration(
                                        color: !controller.isMapView.value
                                            ? Theme.of(context)
                                                .colorScheme
                                                .surface
                                            : null,
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            bottomLeft: Radius.circular(30)),
                                        gradient: controller.isMapView.value
                                            ? AppColors().linearGradient
                                            : null),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        if (controller.isMapView.value)
                                          const Row(
                                            children: [
                                              Icon(Icons.check),
                                              SizedBox(
                                                width: 4,
                                              ),
                                            ],
                                          ),
                                        const Text('Map view')
                                      ],
                                    )),
                              ),
                              InkWell(
                                onTap: () {
                                  controller.isMapView.value = false;
                                },
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomRight: const Radius.circular(30)),
                                child: Container(
                                    width: 120,
                                    height: 40,
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topRight: Radius.circular(30),
                                            bottomRight: Radius.circular(30)),
                                        color: controller.isMapView.value
                                            ? Theme.of(context)
                                                .colorScheme
                                                .surface
                                            : null,
                                        gradient: !controller.isMapView.value
                                            ? AppColors().linearGradient
                                            : null),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        if (controller.isMapView.value == false)
                                          const Row(
                                            children: [
                                              Icon(Icons.check),
                                              SizedBox(
                                                width: 4,
                                              ),
                                            ],
                                          ),
                                        const Text('List view')
                                      ],
                                    )),
                              )
                            ],
                          ),
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                                width: 80,
                                height: 40,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    gradient: AppColors().linearGradient),
                                child: const Center(child: Text('Filters'))),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: SlideIndexedStack(
                        axis: Axis.horizontal,
                        slideOffset: 0.5,
                        index: controller.isMapView.value ? 0 : 1,
                        duration: const Duration(milliseconds: 300),
                        children: [
                          const MapsWidget(),
                          // change to listview activities
                          Container()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
