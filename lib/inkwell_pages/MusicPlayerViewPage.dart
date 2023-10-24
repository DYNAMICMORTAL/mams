import 'package:audioplayers/audioplayers.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:mams/audios/audio_file.dart';
import 'package:mams/utils/app_styles.dart';
import 'package:video_player/video_player.dart';

class MusicPlayerViewPage extends StatefulWidget {
  const MusicPlayerViewPage({Key? key}) : super(key: key);

  @override
  _MusicPlayerViewPageState createState() => _MusicPlayerViewPageState();
}

class _MusicPlayerViewPageState extends State<MusicPlayerViewPage> {
  late AudioPlayer advancedPlayer;
  late VideoPlayerController _videoPlayerController;
  // Duration _position = Duration.zero;
  // Duration _duration = Duration.zero;

  @override
  void initState() {
    super.initState();
    advancedPlayer = AudioPlayer();
    _videoPlayerController = VideoPlayerController.asset('lib/assets/MusicGif1.mp4')
      ..initialize().then((_) {
        setState(() {});

        // Start video playback
        _videoPlayerController.play();

        // Set up a listener to detect when the video playback is complete
        _videoPlayerController.addListener(() {
          if (_videoPlayerController.value.position >= _videoPlayerController.value.duration) {
            _videoPlayerController.seekTo(Duration.zero); // Loop the video
          }
        });

        // Set looping to true
        _videoPlayerController.setLooping(true);
      });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          if (_videoPlayerController.value.isInitialized)
            Positioned.fill(
              child: Stack(
                children: [
                  VideoPlayer(_videoPlayerController),
                  Container(
                    color: Colors.black.withOpacity(0.6), // Adjust opacity as needed
                  ),
                ],
              ),
            ),
          Positioned(
            left: 15,
            top: 35,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Transform.rotate(
                    angle: 90 * (3.1415926535 / 180),
                    child: Icon(FluentSystemIcons.ic_fluent_ios_chevron_right_regular, size: 30, color: Colors.white),
                  ),
                ),
                const SizedBox(width: 65),
                Container(
                  child: Column(
                    children: [
                      Text("Playing from Album", style: TextStyle(color: Colors.white)),
                      Text("From Heart to Heart", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.65,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    "To you",
                    style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w900),
                  ),

                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.80,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.99,
            child: Column(
              children: [

                AudioFile(advancedPlayer:advancedPlayer),
              ],
            ),
          ),)
          // Other components and containers can be added here
          // They will be stacked over the video
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: MusicPlayerViewPage(),
    ),
  );
}