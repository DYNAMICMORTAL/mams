import 'package:audioplayers/audioplayers.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:mams/audios/audio_file.dart';
import 'package:mams/audios/kayan/coolKids.dart';
import 'package:mams/utils/app_styles.dart';
import 'package:video_player/video_player.dart';

class coolKidsViewPage extends StatefulWidget {
  const coolKidsViewPage({Key? key}) : super(key: key);

  @override
  _MusicPlayerViewPageState createState() => _MusicPlayerViewPageState();
}

class _MusicPlayerViewPageState extends State<coolKidsViewPage> {
  late AudioPlayer advancedPlayer;
  late VideoPlayerController _videoPlayerController;
  bool isHeartLiked=false;
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
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    child: Transform.rotate(
                      angle: 90 * (3.1415926535 / 180),
                      child: Icon(FluentSystemIcons.ic_fluent_ios_chevron_right_regular, size: 30, color: Colors.white),
                    ),
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
              width: MediaQuery.of(context).size.width * 0.99,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cool Kids",
                          style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "KAYAN",
                          style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w900),
                        ),

                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        InkWell(
                            onTap: (){
                              setState(() {
                                isHeartLiked=true;
                              });
                            },
                            onDoubleTap: (){
                              setState(() {
                                isHeartLiked=false;
                              });
                            },
                            child: isHeartLiked==false?Icon(FluentSystemIcons.ic_fluent_heart_regular, color: Colors.yellow, size: 30,):Icon(FluentSystemIcons.ic_fluent_heart_filled, color: Colors.yellow, size: 30,)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.80,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.99,
              child: Column(
                children: [

                  coolKids(advancedPlayer:advancedPlayer),
                ],
              ),
            ),),
          // They will be stacked over the video
          // Positioned(
          //   top: MediaQuery.of(context).size.height * 0.96,
          //   child: Container(
          //     child: Column(
          //       children: [
          //         Text("Lyrics", style: Styles.headlineStyle5.copyWith(color: Colors.white),),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: coolKidsViewPage(),
    ),
  );
}