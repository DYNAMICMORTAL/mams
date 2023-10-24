import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioFile extends StatefulWidget {
  final AudioPlayer advancedPlayer;
  const AudioFile({super.key, required this.advancedPlayer});

  @override
  State<AudioFile> createState() => _AudioFileState();
}

class _AudioFileState extends State<AudioFile> {
  Duration _duration = new Duration();
  Duration _position = new Duration();
  final String path = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3";
  String source = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3";
  final String url = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3";
  bool isPlaying=false;
  bool isPaused=false;
  bool isLoop=false;
  List<IconData> _icons =[
    Icons.play_circle_fill,
    Icons.pause_circle_filled,
  ];

  @override
  void initState(){
    super.initState();
    this.widget.advancedPlayer.onDurationChanged.listen((d) {setState(() {
      _duration=d;
    }); });
    this.widget.advancedPlayer.onPositionChanged.listen((p) {setState(() {
      _position=p;
    }); });

    this.widget.advancedPlayer.setSourceUrl(path);
  }

  Widget btnStart() {
    return IconButton(
      padding: const EdgeInsets.only(bottom: 10),
        onPressed: () {
          this.widget.advancedPlayer.play(UrlSource(url));
        },
        icon: Icon(_icons[0]));
  }

  Widget loadAsset() {
    return Container(
        child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          btnStart(),
        ])
    );
}


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

            ],
          ),),
          loadAsset(),
        ],
      ),
    );
  }
}













