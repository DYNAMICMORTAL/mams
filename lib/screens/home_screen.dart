// import 'package:booktickets/screens/ticket_view.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'train_data.dart';// Import the train data
import 'ads_view.dart';
import 'bus_pass_view.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSearching = false;
  double searchBarHeight = 60.0; // Initial height of the search bar
  List<Train> searchResults = [];

  void searchTrains(String query) {
    setState(() {
      searchResults = trainList.where((train) {
        return train.number.contains(query) ||
            train.startStation.contains(query) ||
            train.endStation.contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_list_filled),
                        const Spacer(),
                        Text("MAMS", style: Styles.headlineStyle1),
                        const Spacer(),
                        const Icon(FluentSystemIcons.ic_fluent_arrow_right_circle_filled),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Gap(0),

                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: searchBarHeight,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isSearching = true;
                            searchBarHeight = 150.0; // Expanded height for search bar
                          });
                        },
                        child: Container(
                          width: 348.7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF4F6FD),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                          child: Row(
                            children: [
                              const Icon(FluentSystemIcons.ic_fluent_search_regular),
                              const Gap(20),
                              Expanded(
                                child: TextField(
                                  autofocus: isSearching,
                                  onChanged: (query) {
                                    if (query.isNotEmpty) {
                                      setState(() {
                                        searchTrains(query);
                                      });
                                    } else {
                                      setState(() {
                                        searchResults.clear();
                                      });
                                    }
                                  },
                                  decoration: InputDecoration.collapsed(
                                    hintText: "Enter Destination or Bus Number",
                                    hintStyle: Styles.headlineStyle5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Display search results here
                    if (isSearching)
                      Column(
                        children: searchResults.map((train) => ListTile(
                          title: Text(train.number),
                          subtitle: Text('${train.startStation} to ${train.endStation}'),
                        )).toList(),
                      ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left:10),
                  child: Row(
                    children: [
                      Ads(),
                      Ads(),
                    ],
                  ),
                )
              ],
            ),
          ),
          if (!isSearching) // Show other elements only if not searching
            Column(
              children: [
                BuyPass(),
              ],
            )
        ],
      ),
    );
  }
}


