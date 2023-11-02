import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:gap/gap.dart';
import 'package:mams/maps/map_overview_65ac.dart';
import '../utils/app_styles.dart';

class ContainerInfo {
  String title;
  bool isVisible;
  Widget customContent;

  ContainerInfo(this.title, this.isVisible, this.customContent);
}

class Down65 extends StatefulWidget {
  const Down65({Key? key}) : super(key: key);

  @override
  _Down65State createState() => _Down65State();
}

class _Down65State extends State<Down65> {
  double _containerHeight = 0.5;
  List<ContainerInfo> _containers = [];

  @override
  void initState() {
    super.initState();
    _containers = [
      ContainerInfo(
        "Thane Station East",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon (FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Siddarth Nagar",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Swami Vivekanand Chowk",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Marathon Chowk(Teen Hath Naka)",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Louiswadi",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Nitin Company Junction",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Sambhaji Nagar",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Siddheswar Talav",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Cadbury Junction",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Cadbury Junction",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Flower Valley",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Jupiter Hospital",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Hanuman Mandir",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Majiwada Naka",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Kapurbawdi",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Tattvadyan Vidyapeeth",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Lockim Company",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Manpada",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Mulla Bagh",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Azad Nagar Naka",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Garware Paint",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Patli Pada",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: const Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Patlipada Junction",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Dongari Pada",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Waghbil Naka",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
      ContainerInfo(
        "Waghbil Naka",
        false,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
              const Gap(15),
              InkWell(
                onTap: () {
                  // enter page here
                },
                child: Text("Scheduled Bus Timetable", style: TextStyle(color: Colors.orange),),
              ),
              // Add more custom widgets here
            ],
          ),
        ),
      ),
    ];
  }

  void _toggleContainerVisibility(String containerTitle) {
    setState(() {
      for (var container in _containers) {
        container.isVisible = (container.title == containerTitle);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const Expanded(
                child: MapsOverview65(),
              ),
              GestureDetector(
                onVerticalDragUpdate: (details) {
                  setState(() {
                    _containerHeight -= details.delta.dy / MediaQuery.of(context).size.height;
                    _containerHeight = _containerHeight.clamp(0.25, 0.9);
                  });
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * _containerHeight,
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "65AC - Thane Station -> Borivali Station",
                              style: Styles.headlineStyle2.copyWith(fontSize: 18),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Gap(10),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/chat'); // Replace with your route
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              "Chat",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: _containers.map((container) {

                              return Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: buildContainer(
                                  container.title,
                                  container.isVisible,
                                  _toggleContainerVisibility,
                                  container.customContent,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildContainer(
      String containerText,
      bool isVisible,
      Function(String) toggleFunction,
      Widget customContent,
      ) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              toggleFunction(containerText);
            },
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                containerText,
                style: Styles.headlineStyle3,
              ),
            ),
          ),
          Visibility(
            visible: isVisible,
            child: Container(
              child: customContent, // Use the provided custom content
            ),
          ),
        ],
      ),
    );
  }
}
