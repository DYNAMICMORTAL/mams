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
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 15),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(FluentSystemIcons.ic_fluent_arrow_left_filled),
                        ),
                        const Gap(15),
                        Text("MMRDA Metros", style: Styles.headlineStyle2,),
                      ],
                    ),
                  ), //navbar
                  Container(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/mmrda1');
                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 15, right: 15, top: 12, bottom: 12),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                     Container(
                                        width: 40, // Adjust the size of the circle
                                        height: 40, // Adjust the size of the circle
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue, // Change the color of the circle
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.star,
                                            color: Colors.white, // Change the color of the icon
                                            size: 20.0, // Adjust the size of the icon
                                          ),
                                        ),
                                      ),

                                    const Gap(15),
                                    Text("Mumbai Metro Line 1", style: Styles.headlineStyle3,),
                                    const Spacer(),
                                    Icon(FluentSystemIcons.ic_fluent_chevron_right_regular),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Gap(18),
                        Container(
                          padding: const EdgeInsets.only(left: 15, right: 15, top: 12, bottom: 12),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(12.5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 40, // Adjust the size of the circle
                                      height: 40, // Adjust the size of the circle
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.yellow, // Change the color of the circle
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.white, // Change the color of the icon
                                          size: 20.0, // Adjust the size of the icon
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Gap(15),
                                  Text("Mumbai Metro Line 2A", style: Styles.headlineStyle3,),
                                  const Spacer(),
                                  Icon(FluentSystemIcons.ic_fluent_chevron_right_regular),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Gap(18),
                        Container(
                          padding: const EdgeInsets.only(left: 15, right: 15, top: 12, bottom: 12),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(12.5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 40, // Adjust the size of the circle
                                      height: 40, // Adjust the size of the circle
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.yellowAccent, // Change the color of the circle
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.white, // Change the color of the icon
                                          size: 20.0, // Adjust the size of the icon
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Gap(15),
                                  Text("Mumbai Metro Line 2B", style: Styles.headlineStyle3,),
                                  const Spacer(),
                                  Icon(FluentSystemIcons.ic_fluent_chevron_right_regular),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Gap(18),
                        Container(
                          padding: const EdgeInsets.only(left: 15, right: 15, top: 12, bottom: 12),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(12.5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 40, // Adjust the size of the circle
                                      height: 40, // Adjust the size of the circle
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.redAccent, // Change the color of the circle
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.white, // Change the color of the icon
                                          size: 20.0, // Adjust the size of the icon
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Gap(15),
                                  Text("Mumbai Metro Line 7", style: Styles.headlineStyle3,),
                                  const Spacer(),
                                  Icon(FluentSystemIcons.ic_fluent_chevron_right_regular),
                                ],
                              ),
                            ],
                          ),
                        ),
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
                  ),//MetroChoose
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
