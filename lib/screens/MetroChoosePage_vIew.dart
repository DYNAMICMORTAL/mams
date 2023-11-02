import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mams/utils/app_styles.dart';

class MetroChoosePage extends StatelessWidget {
  const MetroChoosePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                            child: Icon(FluentSystemIcons.ic_fluent_arrow_left_filled)),
                        const Gap(15),
                        Text("MMRDA Metros", style: Styles.headlineStyle2,),
                      ],
                    ),
                  ), //navbar
                  Container(), //MetroChoose
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
