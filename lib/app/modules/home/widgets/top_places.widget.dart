import 'package:flutter/material.dart';
import 'package:yyc_scan/app/global_widgets/texts/title.widget.dart';

class TopPlacesWidget extends StatelessWidget {
  const TopPlacesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleWidget(iconData: Icons.place, text: 'Top Places'),
              Text('See More...')
            ],
          ),
        ],
      ),
    );
  }
}
