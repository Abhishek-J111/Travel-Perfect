import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'videoList.dart';
class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Videos'),
      ),
      body: ListView(
        children: <Widget>[
          videoList(
            videoPlayerController:VideoPlayerController.network('http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4'),
            looping: true,
          ),
          videoList(
            videoPlayerController:VideoPlayerController.network('https://drive.google.com/file/d/1vEugbnkEbbm2X0pKFVbHYcmeeIMuyh8S/view'),
            looping: true,
          ),
        ],
      ),
      
    );
  }
}