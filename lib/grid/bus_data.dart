import 'package:flutter/material.dart';

class BusRoute {
  final String busNo;
  final String source;
  final String destination;
  final List<String> stations;
  final List<String> timings;

  BusRoute(this.busNo, this.source, this.destination, this.stations, this.timings);
}

final List<BusRoute> busRoutes = [
    BusRoute(
      "AC 58",
      "Thane Station",
      "Mira Road Station",
      ["Thane Station", "Income Tax Office", "Highway Junction", "Cadbury Junction", "Majiwada Naka", "Manpada", "Dongari Pada", "Anand Nagar", "Ovale Village", "Shri Ram Hospital", "Bhayander Pada", "Gaimukh", "Kajupada", "Chena Bridge", "Vishram Grih", "Varsova / Fountain Hotel", "Jain Mandir", "Ghodbunder Village", "Western Hotel", "Kashigaon", "Silver Park", "Mira Road Station"],
      [
        "09:22 am", "09:52 am", "10:22 am", "10:52 am", "11:22 am", "11:52 am", "12:52 pm",
        "01:22 pm", "01:52 pm", "02:22 pm", "02:52 pm", "03:22 pm", "04:52 pm", "05:22 pm",
        "05:52 pm", "06:22 pm", "06:52 pm", "07:22 pm", "08:22 pm", "08:52 pm", "09:22 pm",
        "09:52 pm", "10:22 pm", "10:52 pm",
      ],
    ),
    BusRoute(
      "100",
      "Thane Station",
      "Lokmanya Nagar",
      ["Thane Station", "Gaondevi", "A K Joshi Vidyalaya", "ICE Factory", "Hari Niwas", "Forest Office Bus Stop", "Marfi Company", "Louis Wadi", "Nitin Company Junction", "Siddheshwar Talao", "Cadbury Junction", "JK Raymond", "Vartak Nagar", "Korus Company", "Runwal Plaza", "Aai Mata Mandir", "Yashodhan Nagar", "Lokmanya Nagar"],
      ["06:36 am", "07:36 am", "08:46 am", "10:06 am", "11:56 am", "04:26 pm", "05:36 pm", "06:56 pm", "08:16 pm", "10:06 pm", "11:06 pm"]

    ),
    BusRoute(
      "12",
      "Thane Station",
      "Pawar Nagar",
      ["Thane Station", "Prabhat Cinema", "Talao Pali", "Civil / Court", "School No 7", "Uthalsar Naka", "Ambika Yoga Kutir", "Muktai Nagar", "Oswal Park", "Subhash Nagar", "Voltas Company", "Gandhi Nagar", "Jawahar Nagar", "Vasant Vihar", "Lokpuram", "Edenwood", "Municipal School", "Pawar Nagar"]

,
      [
  "05:30 am", "06:02 am", "06:14 am", "06:26 am", "06:30 am", "06:38 am", "06:56 am", "07:02 am", "07:08 am", "07:14 am",
  "07:20 am", "07:26 am", "07:30 am", "07:32 am", "07:38 am", "07:44 am", "07:56 am", "08:02 am", "08:08 am", "08:14 am",
  "08:20 am", "08:26 am", "08:32 am", "08:38 am", "08:50 am", "09:00 am", "09:31 am", "09:37 am", "09:43 am", "09:49 am",
  "09:55 am", "10:01 am", "10:07 am", "10:10 am", "10:13 am", "10:19 am", "10:36 am", "10:42 am", "10:48 am", "10:54 am",
  "11:00 am", "11:06 am", "11:12 am", "11:15 am", "11:18 am", "11:24 am", "11:41 am", "11:47 am", "11:53 am", "12:05 pm",
  "12:11 pm", "12:17 pm", "12:29 pm", "12:46 pm", "12:58 pm", "01:10 pm", "01:22 pm", "01:34 pm", "01:45 pm", "01:57 pm",
  "02:09 pm", "02:21 pm", "02:33 pm", "02:50 pm", "03:02 pm", "03:14 pm", "03:26 pm", "03:38 pm", "03:55 pm", "04:07 pm",
  "04:19 pm", "04:25 pm", "04:31 pm", "04:38 pm", "04:43 pm", "04:55 pm", "05:07 pm", "05:20 pm", "05:30 pm", "05:36 pm",
  "05:42 pm", "05:48 pm", "05:54 pm", "06:00 pm", "06:06 pm", "06:12 pm", "06:18 pm", "06:24 pm", "06:35 pm", "06:41 pm",
  "06:47 pm", "06:53 pm", "06:59 pm", "07:05 pm", "07:11 pm", "07:17 pm", "07:23 pm", "07:29 pm", "07:40 pm", "07:46 pm",
  "07:52 pm", "08:05 pm", "08:08 pm", "08:10 pm", "08:15 pm", "08:22 pm", "08:28 pm", "08:38 pm", "08:50 pm", "09:02 pm",
  "09:14 pm", "09:21 pm", "09:26 pm", "09:33 pm", "09:45 pm", "09:57 pm", "10:09 pm", "10:21 pm", "10:25 pm", "10:33 pm",
  "10:37 pm", "10:49 pm", "10:55 pm", "10:58 pm", "11:01 pm", "11:10 pm", "11:13 pm", "11:30 pm", "11:42 pm", "11:54 pm",
  "12:06 am", "12:18 am", "12:30 am", "12:42 am", "12:54 am", "01:06 am", "01:30 am", "01:42 am", "01:54 am", "02:06 am",
  "02:15 am"
]


    ),

  ];