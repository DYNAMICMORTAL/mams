// import 'home_screen.dart';
// import 'package:fluentui_icons/fluentui_icons.dart';
// import 'package:flutter/material.dart';
// import '../utils/app_styles.dart';
// import 'package:gap/gap.dart';
// import 'train_data.dart';
//
// class BottomBar extends StatefulWidget {
//   const BottomBar({super.key});
//
//   @override
//   State<BottomBar> createState() => _BottomBarState();
// }
//
// class _BottomBarState extends State<BottomBar> {
//   int _selectedIndex = 0;
//   static final List<Widget> _widgetOptions = <Widget>[
//     const HomeScreen(),
//     // const Text("Home"),
//     TrainSearchContent(),
//     const Text("Tickets"),
//     const Text("Profile"),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions[_selectedIndex],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         elevation: 10,
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: const Color(0xFF526480),
//         unselectedItemColor: const Color(0xFF526480),
//         items: const [
//           BottomNavigationBarItem(
//               icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
//               activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
//               label: "Home"),
//           BottomNavigationBarItem(
//               icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
//               label: "Search"),
//           BottomNavigationBarItem(
//               icon: Icon(FluentSystemIcons.ic_fluent_airplane_regular),
//               label: "My Tickets"),
//           BottomNavigationBarItem(
//               icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
//               label: "Profile"),
//         ],
//       ),
//     );
//   }
// }
//
// class TrainSearchContent extends StatefulWidget {
//   @override
//   _TrainSearchContentState createState() => _TrainSearchContentState();
// }
//
// class _TrainSearchContentState extends State<TrainSearchContent> {
//   bool isSearching = false;
//   List<Train> searchResults = [];
//   TextEditingController _searchController = TextEditingController();
//
//   void searchTrains(String query) {
//     setState(() {
//       searchResults = trainList.where((train) {
//         return train.number.contains(query) ||
//             train.startStation.contains(query) ||
//             train.endStation.contains(query);
//       }).toList();
//     });
//   }
//
//   @override
//   void dispose() {
//     _searchController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     const EdgeInsets.only(left: 20, top: 100, right: 20);
//     return Column(
//       children: [
//         Container(
//           width: 348.7,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: const Color(0xFFF4F6FD),
//           ),
//           padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
//           child: Row(
//             children: [
//               const Icon(FluentSystemIcons.ic_fluent_search_regular),
//               const Gap(20),
//               Expanded(
//                 child: TextField(
//                   controller: _searchController,
//                   onChanged: (query) {
//                     if (query.isNotEmpty) {
//                       setState(() {
//                         isSearching = true;
//                       });
//                       searchTrains(query);
//                     } else {
//                       setState(() {
//                         isSearching = false;
//                         searchResults.clear();
//                       });
//                     }
//                   },
//                   decoration: InputDecoration.collapsed(
//                     hintText: "Enter Destination or Bus Number",
//                     hintStyle: Styles.headlineStyle5,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Expanded(
//           child: ListView.builder(
//             itemCount: isSearching ? searchResults.length : 0,
//             itemBuilder: (context, index) {
//               final train = searchResults[index];
//               return ListTile(
//                 title: Text(train.number),
//                 subtitle:
//                 Text('${train.startStation} to ${train.endStation}'),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }




































import 'package:booktickets/screens/train_data.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:gap/gap.dart';
import 'package:video_player/video_player.dart';
import 'home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late VideoPlayerController _controller;
  bool _videoCompleted = false;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
      'lib/assets/MAMS.mp4',
    )
      ..initialize().then((_) {
        setState(() {});
        _playVideo();
      })
      ..setVolume(0.0);
  }

  void _playVideo() async {
    // playing video
    _controller.play();

    // add delay till video is complete
    await Future.delayed(_controller.value.duration);

    setState(() {
      _videoCompleted = true;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    TrainSearchContent(),
    const Text("Tickets"),
    const Text("Profile"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          if (!_videoCompleted && _controller.value.isInitialized)
            Positioned.fill(
              child: Center(
                child: AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
          if (_videoCompleted || !_controller.value.isInitialized)
            Center(
              child: _widgetOptions[_selectedIndex],
            ),
        ],
      ),
      bottomNavigationBar: Visibility(
        visible: _videoCompleted,
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF526480),
          unselectedItemColor: const Color(0xFF526480),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_airplane_regular),
                label: "My Tickets"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
                label: "Profile"),
          ],
        ),
      ),
    );
  }
}


class TrainSearchContent extends StatefulWidget {
  @override
  _TrainSearchContentState createState() => _TrainSearchContentState();
}

class _TrainSearchContentState extends State<TrainSearchContent> {
  bool isSearching = false;
  List<Train> searchResults = [];
  TextEditingController _searchController = TextEditingController();

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
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                  controller: _searchController,
                  onChanged: (query) {
                    if (query.isNotEmpty) {
                      setState(() {
                        isSearching = true;
                      });
                      searchTrains(query);
                    } else {
                      setState(() {
                        isSearching = false;
                        searchResults.clear();
                      });
                    }
                  },
                  decoration: InputDecoration.collapsed(
                    hintText: "Enter Destination or Bus Number",
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: isSearching ? searchResults.length : 0,
            itemBuilder: (context, index) {
              final train = searchResults[index];
              return ListTile(
                title: Text(train.number),
                subtitle: Text('${train.startStation} to ${train.endStation}'),
              );
            },
          ),
        ),
      ],
    );
  }
}
