import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class loginPageOverview extends StatefulWidget {
  const loginPageOverview({Key? key}) : super(key: key);

  @override
  _LoginPageOverviewState createState() => _LoginPageOverviewState();
}

class _LoginPageOverviewState extends State<loginPageOverview> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
      'lib/assets/joint.mp4',
    )
      ..initialize().then((_) {
        setState(() {});
        _playVideo();
      })
      ..setVolume(0.0)
      ..setLooping(true); // Set looping to true for continuous playback
  }

  void _playVideo() {
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          if (_controller.value.isInitialized)
            Container(
              constraints: BoxConstraints.expand(),
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
              ),
            )
          else
            Container(), // Placeholder while video is loading

          // Add your login page on top of the video
          Positioned.fill(
            child: LoginWidget(),
          ),
        ],
      ),
    );
  }
}

class LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with your login page widget
    return Container(
      color: Colors.transparent, // Adjust the color as needed
      child: Center(
        child: YourLoginPage(),
      ),
    );
  }
}

class YourLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with your actual login page content
    return Container(
      child: Center(
        child: Text('Login Page'),
      ),
    );
  }
}
