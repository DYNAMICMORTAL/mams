import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class MMRDA2A extends StatelessWidget {
  const MMRDA2A({super.key});

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
                  InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(FluentSystemIcons.ic_fluent_arrow_left_regular)),
                  const Gap(15),
                  Text("Mumbai Metro Line 2A", style: Styles.headlineStyle2),
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
                            Text("Lower Oshiwara to Dahisar"),
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
                            Text("Dahisar to Eksar"),
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
                            Text("Dahanukarawadi to Lower Malad"),
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
                            Text("Goregaon West to Andheri West"),
                          ],
                        ),
                        const Spacer(),
                        Icon(FluentSystemIcons.ic_fluent_chevron_right_regular),
                      ],
                    ),
                  ),
                  const Gap(35),
                  Container(
                    padding: const EdgeInsets.only(left: 5, right:5),
                    width: MediaQuery.of(context).size.width*0.90,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Choose an option to Travel", style: Styles.headlineStyle3),
                        const Gap(12),
                        Container(
                          padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(FluentSystemIcons.ic_fluent_phone_mobile_regular),
                                        const Gap(15),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Metro QR Ticket"),
                                              const Gap(1),
                                              Text(
                                                "Digital tickets for on-the-go journey. We believe in Paperless and Eco-Friendly ticketing systems",
                                                style: Styles.headlineStyle4.copyWith(overflow: TextOverflow.ellipsis),
                                              )
                                            ],
                                          ),
                                        ),
                                        Icon(FluentSystemIcons.ic_fluent_chevron_right_regular),
                                      ],
                                    ),
                                    // Add more rows as needed...
                                  ],
                                ),
                              ),
                              const Gap(20),
                              Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(FluentSystemIcons.ic_fluent_contact_card_regular),
                                        const Gap(15),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("MAMS Metro Pass"),
                                              const Gap(1),
                                              Text(
                                                "Multiple trips in one card. Recharge any time and use anywhere.",
                                                style: Styles.headlineStyle4.copyWith(overflow: TextOverflow.ellipsis),
                                              )
                                            ],
                                          ),
                                        ),
                                        Icon(FluentSystemIcons.ic_fluent_chevron_right_regular),
                                      ],
                                    ),
                                    // Add more rows as needed...
                                  ],
                                ),
                              ),
                              const Gap(20),
                              Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(FluentSystemIcons.ic_fluent_contact_card_group_regular),
                                        const Gap(15),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Multi QR Ticket"),
                                              const Gap(1),
                                              Text(
                                                "Mutiple trip QR for any amount, use immediately at station",
                                                style: Styles.headlineStyle4.copyWith(overflow: TextOverflow.ellipsis),
                                              )
                                            ],
                                          ),
                                        ),
                                        Icon(FluentSystemIcons.ic_fluent_chevron_right_regular),
                                      ],
                                    ),
                                    // Add more rows as needed...
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
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
