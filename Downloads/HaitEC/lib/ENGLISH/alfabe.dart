import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'dart:io' show Platform;
import 'package:video_player/video_player.dart';
import 'package:first_app/video.dart';

void main() => runApp(alfabe());

class alfabe extends StatefulWidget {
  @override
  _alfabeState createState() => _alfabeState();
}

class _alfabeState extends State<alfabe> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );

    _initializeVideoPlayerFuture = _controller.initialize();

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    FlutterPluginTts.setLanguage("en-US");
    if (Platform.isIOS) {
      FlutterPluginTts.setSpeechRate(0.4);
    } else {
      FlutterPluginTts.setSpeechRate(0.3);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("English"),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Container(
                    child: Text(
                      "LET'S LEARN THE ALPHABET",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Letter('A'),
                      Letter('B'),
                      Letter('C'),
                      Letter('D')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Letter('E'),
                      Letter('F'),
                      Letter('G'),
                      Letter('H')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Letter('I'),
                      Letter('J'),
                      Letter('K'),
                      Letter('L')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Letter('M'),
                      Letter('N'),
                      Letter('O'),
                      Letter('P')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Letter('Q'),
                      Letter('R'),
                      Letter('S'),
                      Letter('T')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Letter('U'),
                      Letter('V'),
                      Letter('W'),
                      Letter('X')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Letter('Y'),
                      Letter('Z'),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Letter extends StatelessWidget {
  final String letter;
  const Letter(this.letter);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          FlutterPluginTts.speak(letter.toLowerCase());
        },
        child: Card(
          child: Container(
            height: ScreenUtil.instance.setHeight(240),
            child: Container(
              padding: EdgeInsets.all(0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    letter,
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
          ),
          color: Colors.teal[10],
        ),
      ),
    );
  }
}
