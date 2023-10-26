import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';
import '../screens/train_data.dart';
import 'busList.dart';

class GridOverView extends StatefulWidget {
  const GridOverView({super.key});

  @override
  _ChatOverviewState createState() => _ChatOverviewState();
}

class _ChatOverviewState extends State<GridOverView> {
  TextEditingController _searchController = TextEditingController();
  List<Train> searchResults = [];

  void searchBuses(String query) {
    setState(() {
      searchResults = trainList.where((train) {
        return train.number == query;
      }).toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 45),
              width: MediaQuery.of(context).size.width * 0.85,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      // Handle arrow button tap
                    },
                    child: Icon(FluentSystemIcons.ic_fluent_arrow_left_filled),
                  ),
                  const Gap(10),
                  Text("Search for Bus", style: Styles.headlineStyle2),
                ],
              ),
            ), // -> Main Search Row
            const Gap(10),
            Container(
              height: 55, // Reduce the height of the search bar
              margin: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 20), // Adjust the horizontal margin
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFF4F6FD),
              ),
              child: Row(
                children: [
                  const Gap(10),
                  const Icon(FluentSystemIcons.ic_fluent_search_regular),
                  const Gap(15), // Reduce the gap
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      onChanged: (query) {
                        searchBuses(query);
                      },
                      decoration: InputDecoration.collapsed(
                        hintText: "Enter Bus Number",
                        hintStyle: Styles.headlineStyle5,
                      ),
                    ),
                  ),
                ],
              ),
            ), // -> Main Textfield Input
            // -> Display search results
            // Display route information container only if search result contains '123'
            if (searchResults.isNotEmpty && searchResults[0].number == '123')
              Container(
                padding: const EdgeInsets.only(top: 15, bottom: 15, left: 10),
                margin: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 20), // Adjust padding
                decoration: BoxDecoration(
                  color: Color(0xFFFF1F1F3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(FluentSystemIcons
                              .ic_fluent_chevron_down_circle_filled),
                          const Gap(10),
                          Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/123Down');
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "123",
                                    style: Styles.headlineStyle4.copyWith(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Inter'),
                                  ),
                                  Text("Mulund Depot -> CSMT Gate",
                                      style: Styles.headlineStyle4.copyWith(
                                          fontSize: 17, color: Colors.black54)),
                                ],
                              ),
                            ),
                          ), // -> Route Container
                        ],
                      ), // -> Iteration 1 row
                      const Gap(25),
                      Row(
                        children: [
                          Icon(FluentSystemIcons.ic_fluent_chevron_up_filled),
                          const Gap(10),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/123Up');
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "123",
                                  style: Styles.headlineStyle4.copyWith(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'Inter'),
                                ),
                                Text(
                                  "CSMT Gate -> Mulund Depot",
                                  style: Styles.headlineStyle4.copyWith(
                                      fontSize: 17, color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ), // -> Iteration 2 row
                    ],
                  ),
                ),
              ),
            if (searchResults.isNotEmpty && searchResults[0].number == '456')
              Container(
                padding: const EdgeInsets.only(top: 15, bottom: 15, left: 10),
                margin: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 20), // Adjust padding
                decoration: BoxDecoration(
                  color: Color(0xFFFF1F1F3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(FluentSystemIcons
                              .ic_fluent_chevron_down_circle_filled),
                          const Gap(10),
                          Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "456",
                                  style: Styles.headlineStyle4.copyWith(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'Inter'),
                                ),
                                Text("Terminal 2 Gate -> Ghatko..",
                                    style: Styles.headlineStyle4.copyWith(
                                        fontSize: 17, color: Colors.black54)),
                              ],
                            ),
                          ), // -> Route Container
                        ],
                      ), // -> Iteration 1 row
                      const Gap(25),
                      Row(
                        children: [
                          Icon(FluentSystemIcons.ic_fluent_chevron_up_filled),
                          const Gap(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "456",
                                style: Styles.headlineStyle4.copyWith(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Inter'),
                              ),
                              Text("Ghatkopar Metro -> Termin..",
                                  style: Styles.headlineStyle4.copyWith(
                                      fontSize: 17, color: Colors.black54)),
                            ],
                          ),
                        ],
                      ), // -> Iteration 2 row
                    ],
                  ),
                ),
              ),
            if (searchResults.isNotEmpty && searchResults[0].number == '789')
              Container(
                padding: const EdgeInsets.only(top: 15, bottom: 15, left: 10),
                margin: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 20), // Adjust padding
                decoration: BoxDecoration(
                  color: Color(0xFFFF1F1F3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(FluentSystemIcons
                              .ic_fluent_chevron_down_circle_filled),
                          const Gap(10),
                          Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "789",
                                  style: Styles.headlineStyle4.copyWith(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'Inter'),
                                ),
                                Text("Borivali Depot -> Colaba C..",
                                    style: Styles.headlineStyle4.copyWith(
                                        fontSize: 17, color: Colors.black54)),
                              ],
                            ),
                          ), // -> Route Container
                        ],
                      ), // -> Iteration 1 row
                      const Gap(25),
                      Row(
                        children: [
                          Icon(FluentSystemIcons.ic_fluent_chevron_up_filled),
                          const Gap(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "789",
                                style: Styles.headlineStyle4.copyWith(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Inter'),
                              ),
                              Text(
                                "Colaba Causeway -> Borivali",
                                style: Styles.headlineStyle4.copyWith(
                                    fontSize: 17, color: Colors.black54),
                              ),
                            ],
                          ),
                        ],
                      ), // -> Iteration 2 row
                    ],
                  ),
                ),
              ),
              Container(
  child: Column(
    children: [
      Text(
        "Routes and buses",
        style: TextStyle(
          fontSize: 20, // Adjust the font size
          fontWeight: FontWeight.bold, // Adjust the font weight
          // Add any other styling you need
        ),
      ),
      const Gap(10), // Add some spacing between the text and the button
      ElevatedButton(
  onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => BusListPage()));
  },
  child: Text("See all buses"),
),

    ],
  ),
)

          ],
        ),
      ),
      // ->Main Column,
    );
    
  }
}
