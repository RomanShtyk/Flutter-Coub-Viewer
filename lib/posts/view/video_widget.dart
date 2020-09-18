import 'package:audioplayers/audioplayers.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({@required this.videoUrl, @required this.audioUrl})
      : super();
  final String videoUrl;
  final String audioUrl;

  @override
  _VideoWidgetState createState() =>
      _VideoWidgetState(videoUrl: videoUrl, audioUrl: audioUrl);
}

class _VideoWidgetState extends State<VideoWidget> {
  _VideoWidgetState({@required this.videoUrl, @required this.audioUrl})
      : super();
  final String videoUrl;
  final String audioUrl;
  BetterPlayerDataSource betterPlayerDataSource;
  BetterPlayerConfiguration betterPlayerConfiguration;
  BetterPlayerListVideoPlayerController betterPlayerListVideoPlayerController;
  AudioPlayer audioPlayer;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer()
      ..setUrl(audioUrl ?? 'null', respectSilence: true, isLocal: false)
      ..setVolume(1.0);
    audioPlayer.onPlayerError.listen((msg) {
      print('audioPlayer error : $msg');
    });
    betterPlayerDataSource =
        BetterPlayerDataSource(BetterPlayerDataSourceType.NETWORK, videoUrl);
    betterPlayerConfiguration = const BetterPlayerConfiguration(
        looping: true,
        controlsConfiguration: BetterPlayerControlsConfiguration(
            showControls: false, showControlsOnInitialize: false));
  }

  @override
  Widget build(BuildContext context) {
    return BetterPlayerListVideoPlayer(
      betterPlayerDataSource,
      configuration: betterPlayerConfiguration,
      playFraction: 1.0,
      stateChangeNotifier: startStopAudioPlayer,
    );
  }

  void startStopAudioPlayer(bool isPlaying) {
    if (isPlaying) {
      audioPlayer.resume();
    } else {
      audioPlayer.pause();
    }
  }

  @override
  void dispose() {
    super.dispose();
    audioPlayer.release();
  }
}
