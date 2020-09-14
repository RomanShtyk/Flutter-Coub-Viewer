import 'package:flutter_infinite_list/models/video.dart';
import 'package:flutter_infinite_list/models/audio.dart';

class Html5 {

  Video video;
  Audio audio;

	Html5.fromJsonMap(Map<String, dynamic> map): 
		video = Video.fromJsonMap(map["video"]),
		audio = Audio.fromJsonMap(map["audio"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['video'] = video == null ? null : video.toJson();
		data['audio'] = audio == null ? null : audio.toJson();
		return data;
	}
}
