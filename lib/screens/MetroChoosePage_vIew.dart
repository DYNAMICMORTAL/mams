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
                            child: Icon(FluentSystemIcons.ic_fluent_arrow_left_filled)),
                        const Gap(15),
                        Text("MMRDA Metros", style: Styles.headlineStyle2,),
                      ],
                    ),
                  ), //navbar
                  Container(
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
                            InkWell(
                              onTap: () {},
                              child: Container(
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
