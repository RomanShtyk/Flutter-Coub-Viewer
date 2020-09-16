import 'package:audioplayers/audioplayers.dart';
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
  BetterPlayerDataSource betterPlayerDataSource;
  BetterPlayerConfiguration betterPlayerConfiguration;
  BetterPlayerListVideoPlayerController betterPlayerListVideoPlayerController;
  AudioPlayer audioPlayer;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);
    betterPlayerDataSource =
        BetterPlayerDataSource(BetterPlayerDataSourceType.NETWORK, url);
    betterPlayerConfiguration = const BetterPlayerConfiguration(
        autoPlay: true,
        looping: true,
        controlsConfiguration: BetterPlayerControlsConfiguration(
            showControls: false, showControlsOnInitialize: false)
        // eventListener: videoPlayerEventListener,
        );
    // betterPlayerListVideoPlayerController =
    // BetterPlayerListVideoPlayerController();
    // ignore: cascade_invocations, cascade_invocations
    // betterPlayerListVideoPlayerController.setBetterPlayerController(
    //     BetterPlayerController(betterPlayerConfiguration,
    //         betterPlayerDataSource: betterPlayerDataSource)
    //       ..addEventsListener((event) {
    //         if (url ==
    //             "https://coubsecure-s.akamaihd.net/get/b4/p/coub/simple/cw_file/68c9ca8559e/dd6599c08d0eab1b8a1db/muted_mp4_med_size_1600020573_muted_med.mp4") {
    //           print('my player ${event.betterPlayerEventType}');
    //         }
    //       }));
    // _controller = BetterPlayerListVideoPlayerController();
    // // ..addEventsListener((event) {
    // //   print('Better player event: ${event.betterPlayerEventType}');
    // // });
  }

  @override
  Widget build(BuildContext context) {
    return BetterPlayerListVideoPlayer(
      betterPlayerDataSource,
      configuration: betterPlayerConfiguration,
      playFraction: 1.0,
    );
    //todo fork player to pass play/pause events here;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
