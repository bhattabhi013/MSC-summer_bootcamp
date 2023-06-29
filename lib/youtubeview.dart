import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubeView extends StatefulWidget {
  const YoutubeView({super.key});

  @override
  State<YoutubeView> createState() => _YoutubeViewState();
}

class _YoutubeViewState extends State<YoutubeView> {
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '0-7IHOXkiV8',
    autoPlay: false,
    params: const YoutubePlayerParams(showFullscreenButton: true),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('YOutube preview'),
        ),
        body: (kIsWeb) // flag to check if app is running on web,
            ? SingleChildScrollView(
                child: Center(
                  child: Container(
                    height: 400,
                    width: 400,
                    child: YoutubePlayer(
                      controller: _controller,
                      aspectRatio: 16 / 9,
                    ),
                  ),
                ),
              )
            : Container(
                child: Center(
                  child: Text("Hi! I'm on mobile"),
                ),
              ));
  }
}
