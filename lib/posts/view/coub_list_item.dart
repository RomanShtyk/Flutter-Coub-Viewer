import 'package:flutter/material.dart';
import 'package:flutter_infinite_list/models/coubs.dart';

import 'video_widget.dart';

class CoubListItem extends StatelessWidget {
  const CoubListItem({this.coub}) : super();
  final Coubs coub;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: VideoWidget(
        videoUrl: coub.file_versions.mobile.video,
        audioUrl: coub.file_versions.mobile.audio.last,
      ),
    );
  }
}
