import 'package:audioplayers/audioplayers.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MusicPlayerViewPage extends StatefulWidget {
  const MusicPlayerViewPage({Key? key}) : super(key: key);

  @override
  _MusicPlayerViewPageState createState() => _MusicPlayerViewPageState();
}

class _MusicPlayerViewPageState extends State<MusicPlayerViewPage> {
  late AudioPlayer advancedPlayer;
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    advancedPlayer = AudioPlayer();
    _videoPlayerController = VideoPlayerController.asset('lib/assets/MusicGif1.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized
        setState(() {});

        // Start video playback
        _videoPlayerController.play();

        // Set up a listener to detect when the video playback is complete
        _videoPlayerController.addListener(() {
          if (_videoPlayerController.value.position >= _videoPlayerController.value.duration) {
            setState(() {
              // Video playback is complete
            });
          }
        });
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
      body: SafeArea(
        child: Stack(
          children: [
            if (_videoPlayerController.value.isInitialized)
              Positioned.fill(
                child: VideoPlayer(_videoPlayerController),
              ),
            if (_videoPlayerController.value.isInitialized &&
                _videoPlayerController.value.position < _videoPlayerController.value.duration)
              Container(), // Video is playing, display nothing
            if (_videoPlayerController.value.position >= _videoPlayerController.value.duration)
              Container(
                margin: const EdgeInsets.only(left: 15, top: 12),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Transform.rotate(
                            angle: 90 * (3.1415926535 / 180),
                            child: Icon(FluentSystemIcons.ic_fluent_ios_chevron_right_regular, size: 30),
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
                    ), // Music Album Info and Back Button
                    Container(), // Main Music Container
                    Container(), // Audio Player Container
                    Container(), // Lyrics Container
                  ],
                ),
              ), // MAIN CONTAINER
          ],
        ),
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
