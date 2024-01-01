// import 'dart:js_interop';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mams/utils/app_styles.dart';
import 'package:video_player/video_player.dart';

import '../utils/signInButton.dart';
import '../utils/square_tiles.dart';
import '../utils/textField.dart';

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
                  child: Stack(
                    children: [
                      VideoPlayer(_controller),
                      Opacity(opacity: 0.65,
                      child: Container(
                        color: Colors.black,
                      ),)
                    ],
                  ),
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

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn () async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: usernameController.text,
        password: passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    // Replace this with your actual login page content
    return Container(
      child: SafeArea(
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Text("MAMS", style: Styles.headlineStyle1.copyWith(color: Colors.white),),
                          const Spacer(),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Text("Just Do It", style: Styles.headlineStyle5.copyWith(fontSize: 12,),),
                          const Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Gap(30),
              // Input fields
              MyTextField(
                controller: usernameController,
                hintText: 'username',
                obscureText: false,
              ),
              const Gap(15),
              MyTextField(
                controller: passwordController,
                hintText: 'password',
                obscureText: true,
              ),
              const Gap(10),
              // forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password?", style: Styles.headlineStyle2.copyWith(fontSize: 12.5, color: Colors.white)),
                  ],
                ),
              ),
              const Gap(25),
              // sign in Button
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(height: 50,),
              // or continue with

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(child: Divider(
                      thickness: 0.5,
                      color: Colors.grey.shade500,
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Or continue with", style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                    ),
                    Expanded(child: Divider(
                      thickness: 0.5,
                      color: Colors.grey.shade500,
                    ),)
                  ],
                ),
              ),

              // google + microsoft
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google
                  SquareTile(imagePath: 'lib/assets/icons8-google-48.png'),

                  const SizedBox(width: 25,),

                  // micrsoft
                  SquareTile(imagePath: 'lib/assets/icons8-microsoft-48.png'),
                ],
              ),

              const SizedBox(height: 50,),

              // not a Member? Register Now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member? ", style: Styles.headlineStyle4,),
                  const SizedBox(width: 4,),
                  Text("Register Now", style: Styles.headlineStyle4.copyWith(color: Colors.lightBlueAccent)),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
