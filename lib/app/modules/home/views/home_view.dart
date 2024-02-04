import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:yyc_scan/app/global_widgets/scaffold/scaffold.widget.dart';
import 'package:yyc_scan/app/global_widgets/texts/welcome_message.widget.dart';
import 'package:yyc_scan/app/modules/home/widgets/top_places.widget.dart';
import 'package:yyc_scan/app/modules/home/widgets/your_statistics.widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      scaffoldKey: controller.scaffoldKey,
      backgroundElementPadding: EdgeInsets.only(top: 400),
      child: Column(children: [
        WelcomeMessageWidget(
          name: 'Marybeth',
        ),
        YourStatisticsWidget(),
        FilledButton(onPressed:(){controller.getActivities();
        }, child: Text('sdsdsd')),
        Expanded(child: TopPlacesWidget()),
      
      ]),
    );
  }
}
