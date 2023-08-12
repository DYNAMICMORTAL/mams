import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'train_data.dart';
import 'ads_view.dart';
import 'bus_pass_view.dart';


class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 45, left: 0),
              width: MediaQuery.of(context).size.width*0.90,
              child: Column(
                children: [
                  Container(
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Aditi M", style: Styles.headlineStyle1.copyWith(fontSize: 56, color: Colors.black),),
                              Container(
                                padding: const EdgeInsets.only(top: 15, bottom: 15, left: 15,right: 15),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20), topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Weekly: 7", style: Styles.headlineStyle5.copyWith(fontSize: 12, color: Colors.black),),
                                    Text("Lifetime: 1774513", style: Styles.headlineStyle5.copyWith(fontSize: 12, color: Colors.black)),
                                  ],
                                ),
                              ),//->The Rank Container
                              const Gap(5),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 18),
                                  child: Text("how did you travel today?", style: Styles.headlineStyle3.copyWith(fontSize: 17,),))
                            ],
                          ),
                        ),//->Naming and rank Container
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(30.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                child: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
                              ),
                            ],
                          ),
                        ),//->Profile Photo Container
                      ],
                    ),
                  ), //->The Profile Container with no titles
                  Container(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Text("453 Trips", style: Styles.textStyle.copyWith(fontSize: 9, color: Color(0xFF4285F4)),),
                        const Spacer(),
                        Text("12 Trees", style: Styles.textStyle.copyWith(fontSize: 9, color: Color(0xFFDB4437)),),
                        const Spacer(),
                        Text("235.87 KMs", style: Styles.textStyle.copyWith(fontSize: 9, color: Color(0xFFF4B400)),),
                        const Spacer(),
                        Text("52 Rewards", style: Styles.textStyle.copyWith(fontSize: 9, color: Color(0xFF4285F4)),),
                        const Spacer(),
                        Text("Mumbai Leader", style: Styles.textStyle.copyWith(fontSize: 9, color: Color(0xFF0F9D58)),),
                        const Spacer(),
                        Text("4.77", style: Styles.textStyle.copyWith(fontSize: 9, color: Color(0xFFDB4437)),),
                      ],
                    ),
                  ), //-> the title Container
                ],
              ),
            ),//->the main Up whole Container
            const Gap(15),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade300,
              padding: const EdgeInsets.only(top: 5),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, top: 20,right: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_settings_filled),
                      const Gap(10),
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/settings'); // Navigate to SettingsPage
                          },
                          child: Text("Settings", style: Styles.headlineStyle3)),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_app_folder_filled),
                      const Gap(10),
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/subscriptions'); // Navigate to SettingsPage
                          },
                          child: Text("Manage your Subscriptions", style: Styles.headlineStyle3)),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_arrow_maximize_filled),
                      const Gap(10),
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/rewards'); // Navigate to SettingsPage
                          },
                          child: Text("Rewards", style: Styles.headlineStyle3)),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_games_filled),
                      const Gap(10),
                      Text("LeaderBoard", style: Styles.headlineStyle3),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_flag_filled),
                      const Gap(10),
                      Text("Playground FAQ", style: Styles.headlineStyle3),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_activity_filled),
                      const Gap(10),
                      Text("Manage MAMS account", style: Styles.headlineStyle3),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_help_circle_filled),
                      const Gap(10),
                      Text("Help", style: Styles.headlineStyle3),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_badge_filled),
                      const Gap(10),
                      Text("Report", style: Styles.headlineStyle3),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_info_filled),
                      const Gap(10),
                      Text("Legal", style: Styles.headlineStyle3),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      // Icon(FluentSystemIcons.ic_fluent_settings_filled),
                      Text("Log out Aditi M", style: Styles.textStyle.copyWith(color: Colors.red)),
                    ],
                  ),const Gap(10),
                  Row(
                    children: [
                      // Icon(FluentSystemIcons.ic_fluent_settings_filled),
                      Text("Delete My account", style: Styles.textStyle.copyWith(color: Colors.red),),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("v1.0.0", style: Styles.headlineStyle4,),
                    ],
                  ),
                ],
              ),
            ),//->the main Down whole Container
            const Gap(15),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade300,
              padding: const EdgeInsets.only(top: 5),
            ),
          ],
        ),
      ),
    );
  }
}
