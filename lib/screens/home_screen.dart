import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'train_data.dart';
import 'ads_view.dart';
import 'ads2_view.dart';
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
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
      key: _scaffoldKey,
      backgroundColor: Styles.bgColor,
      appBar: AppBar(
        backgroundColor: Styles.bgColor,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text("MAMS", style: Styles.headlineStyle1),
            const Spacer(),
            const Icon(FluentSystemIcons.ic_fluent_arrow_right_circle_filled),
          ],
        ),
        leading: InkWell(
          onTap: () {
            if (_scaffoldKey.currentState != null) {
              _scaffoldKey.currentState!.openDrawer();
            }
          },
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(FluentSystemIcons.ic_fluent_list_filled),
          ),
        ),
      ),
      drawer: Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: BoxDecoration(
          color: Color(0xFFF000000),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/profile'); // Navigate to Profile screen
              },
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('lib/assets/undraw_Profile_pic_re_iwgo.png'),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/profile'); // Navigate to Profile screen
              },
              child: Text(
                'Aditi M',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),

      ListTile(
        leading: Icon(FluentSystemIcons.ic_fluent_home_filled),
        title: Text('Home'),
        onTap: () {
          Navigator.pushNamed(context, '/home');
        },
      ),
      ListTile(
        leading: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
        title: Text('Bus Pass'),
        onTap: () {
          Navigator.pushNamed(context, '/buspasss');
        },
      ),
      ListTile(
        leading: Icon(FluentSystemIcons.ic_fluent_text_change_accept_filled),
        title: Text('MMRDA Netro'),
        onTap: () {
          Navigator.pushNamed(context, '/learn');
        },
      ),
      ListTile(
        leading: Icon(FluentSystemIcons.ic_fluent_info_filled),
        title: Text('About Us'),
        onTap: () {
          Navigator.pushNamed(context, '/aboutUs');
        },
      ),
    ],
  ),
),
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
                    ),
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
                      Ads2(),
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
                const Gap(15),
                Container(
                  width: MediaQuery.of(context).size.width*0.90,
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("MMRDA METRO", style: Styles.headlineStyle2),
                      const Gap(5),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Handle Pay for ticket button press
                                      Navigator.pushNamed(context, '/metroChoose');
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white, // Background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10), // Adjust the value as needed
                                      ),
                                    ),
                                    child: Container(
                                      padding: const EdgeInsets.only(top: 7,bottom: 7),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(3.0),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFFf0bdd5),
                                              borderRadius: BorderRadius.circular(20),
                                              border: Border.all(width: 2.5, color: Color(0xFFFf0bdd5),),
                                            ),
                                            child: Column(
                                              children: [
                                                Icon(FluentSystemIcons.ic_fluent_ticket_regular, color: Colors.white,)
                                              ],
                                            ),
                                          ),
                                          const Gap(5),
                                          Text(
                                            "Book Now",
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Gap(5),
                                Container(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Handle Pay for ticket button press
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white, // Background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10), // Adjust the value as needed
                                      ),
                                    ),
                                    child: Container(
                                      padding: const EdgeInsets.only(top: 7,bottom: 7),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(3.0),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFFf0bdd5),
                                              borderRadius: BorderRadius.circular(20),
                                              border: Border.all(width: 2.5, color: Color(0xFFFf0bdd5),),
                                            ),
                                            child: Column(
                                              children: [
                                                Icon(FluentSystemIcons.ic_fluent_ticket_regular, color: Colors.white,)
                                              ],
                                            ),
                                          ),
                                          const Gap(5),
                                          Text(
                                            "TimeTable",
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                    ],
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}