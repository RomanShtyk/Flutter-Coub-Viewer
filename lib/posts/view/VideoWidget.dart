import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({@required this.url}) : super();
  final String url;

  @override
  _VideoWidgetState createState() => _VideoWidgetState(url: url);
}

class _VideoWidgetState extends State<VideoWidget> {
  _VideoWidgetState({@required this.url}) : super();
  final String url;
  BetterPlayerListVideoPlayerController _controller;
  BetterPlayerDataSource betterPlayerDataSource;
  BetterPlayerConfiguration betterPlayerConfiguration;

  @override
  void initState() {
    super.initState();
    betterPlayerDataSource =
        BetterPlayerDataSource(BetterPlayerDataSourceType.NETWORK, url);
    betterPlayerConfiguration = const BetterPlayerConfiguration(
      autoPlay: true,
      looping: true,
      showControlsOnInitialize: false,
      // eventListener: videoPlayerEventListener,
    );
    // _controller = BetterPlayerListVideoPlayerController();
    // // ..addEventsListener((event) {
    // //   print('Better player event: ${event.betterPlayerEventType}');
    // // });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        body: BetterPlayerListVideoPlayer(
          betterPlayerDataSource,
          configuration: betterPlayerConfiguration,
          playFraction: 0.7,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

// Function
// dynamic videoPlayerEventListener(BetterPlayerEvent event) {
//   event;
// }
}
