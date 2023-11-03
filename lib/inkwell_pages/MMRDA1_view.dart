import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class MMRDA1 extends StatelessWidget {
  const MMRDA1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(FluentSystemIcons.ic_fluent_arrow_left_regular),
                  const Gap(15),
                  Text("Mumbai Metro Line 1", style: Styles.headlineStyle2),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Recent Journeys", style: Styles.headlineStyle4.copyWith(color: Colors.black, fontSize: 21),),
                  const Gap(10),
                  Container(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                          borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Icon(FluentSystemIcons.ic_fluent_phone_mobile_regular),
                        const Gap(5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Metro QR Ticket"),
                            Text("Andheri to Marol Naka"),
                          ],
                        ),
                        const Spacer(),
                        Icon(FluentSystemIcons.ic_fluent_chevron_right_regular),
                      ],
                    ),
                  ),
                  const Gap(10),
                  Container(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Icon(FluentSystemIcons.ic_fluent_phone_mobile_regular),
                        const Gap(5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Metro QR Ticket"),
                            Text("Versova to Andheri"),
                          ],
                        ),
                        const Spacer(),
                        Icon(FluentSystemIcons.ic_fluent_chevron_right_regular),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
