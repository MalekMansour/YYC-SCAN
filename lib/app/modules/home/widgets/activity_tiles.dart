import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yyc_scan/app/modules/home/controllers/home_controller.dart';



class ActivityCard extends GetView<HomeController> {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            width: Size.infinite.width,
            child: Obx(
              () => ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(45, 45, 45, 1),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    height: 120,
                    width: 70,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          //Image
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/images/sample-image.png')
                              ),
                              borderRadius: BorderRadius.circular(12)
                            )
                          ),
                          const SizedBox(
                            width: 5
                          ),
                          //Text Area
                            Expanded(
                             child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //Row 1,Text
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    //Name
                                    Row(
                                      children: [
                                        const Text("ASDAD", style: TextStyle(
                                          fontSize: 20, 
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.w600)),
                                        const SizedBox(
                                          width: 7
                                        ),
                                        Container(
                                          height: 15,
                                          width: 15,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(image: AssetImage('assets/images/sample-resto-icon.png'))
                                          ),
                                        )
                                      ],
                                    ),
                                    //StarImg,Rating
                                    const Text('4/5', style: TextStyle(
                                      fontSize: 15, 
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w400
                                      )
                                    ),
                                    ]),
                                const Text("aJKBFLAJSBFLKJBA;kfjb;safb;sajbfjbLJKFSBLKabfkljbalksbflaJBFLbaslkjf", 
                                  style: TextStyle(fontSize: 10,), 
                                  maxLines: 2, 
                                  overflow: TextOverflow.ellipsis
                                )
                              ],
                                               ),
                           )
                        ],
                      ),
                    )
                  ),
                );
              }
              ),
            ),
          ),
        ),
    );
  }
}