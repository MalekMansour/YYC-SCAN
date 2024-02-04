import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yyc_scan/app/global_widgets/texts/title.widget.dart';
import 'package:yyc_scan/app/modules/home/controllers/home_controller.dart';
import 'package:yyc_scan/app/modules/activities/views/activity_tiles.dart';

class TopPlacesWidget extends GetView<HomeController> {
  const TopPlacesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleWidget(iconData: Icons.place, text: 'Top Places'.tr),
              Text('See more...'.tr)
            ],
          ),
          ActivityCard()
          // SizedBox(
          //   height: 120,
          //   child: Card(
          //     child: Center(
          //       child: ListTile(
          //         title: Text("Name"),
          //         subtitle: Text("Desc Here"),
          //         leading: SizedBox(
          //           height: 100,
          //           width: 70,
          //           child: Center(child: Text("Image"))
          //         ),
          //         trailing: Text("Rating"),
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
