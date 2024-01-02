import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mams/utils/app_styles.dart';

class ScheduledBuses extends StatelessWidget {
  const ScheduledBuses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Row(
                  children: [
                    Icon(FluentSystemIcons.ic_fluent_arrow_left_filled),
                    const Gap(15),
                    Text("Timetable", style: Styles.headlineStyle2,),
                  ],
                ),
              ), //NavBar
              const Gap(10),
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                  ),
                  child: Text("Scheduled from 06:00AM till 11:00PM", style: Styles.headlineStyle5,)),
              const Gap(10),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Row(
                  children: [
                    Text("06:00AM - 07:00AM"),
                    const Spacer(),
                    Text("Every 15 min"),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Row(
                  children: [
                    Text("07:00AM - 10:00AM"),
                    const Spacer(),
                    Text("Every 10 min"),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Row(
                  children: [
                    Text("10:00AM - 11:00AM"),
                    const Spacer(),
                    Text("Every 15 min"),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Row(
                  children: [
                    Text("11:00AM - 12:00AM"),
                    const Spacer(),
                    Text("Every 10 min"),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: const Row(
                  children: [
                    Text("12:00PM - 06:00PM"),
                    Spacer(),
                    Text("Every 15 min"),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Row(
                  children: [
                    Text("07:00PM - 08:00PM"),
                    const Spacer(),
                    Text("Every 15 min"),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Row(
                  children: [
                    Text("08:00PM - 09:00PM"),
                    const Spacer(),
                    Text("Every 20 min"),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Row(
                  children: [
                    Text("09:00PM - 10:00PM"),
                    const Spacer(),
                    Text("Every 15 min"),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Row(
                  children: [
                    Text("10:00PM - 11:00PM"),
                    const Spacer(),
                    Text("Every 20 min"),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
