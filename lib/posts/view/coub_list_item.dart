import 'package:flutter/material.dart';
import 'package:flutter_infinite_list/models/coubs.dart';

import 'VideoWidget.dart';

class CoubListItem extends StatelessWidget {
  const CoubListItem({this.coub}) : super();
  final Coubs coub;

  @override
  Widget build(BuildContext context) {
    return VideoWidget(url: coub.file_versions.mobile.video);
  }
}
