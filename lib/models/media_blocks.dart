import 'package:flutter_infinite_list/models/remixed_from_coubs.dart';

class Media_blocks {

  List<Object> uploaded_raw_videos;
  List<Object> external_raw_videos;
  List<Remixed_from_coubs> remixed_from_coubs;

	Media_blocks.fromJsonMap(Map<String, dynamic> map): 
		uploaded_raw_videos = map["uploaded_raw_videos"],
		external_raw_videos = map["external_raw_videos"],
		remixed_from_coubs = List<Remixed_from_coubs>.from(map["remixed_from_coubs"].map((it) => Remixed_from_coubs.fromJsonMap(it)));

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['uploaded_raw_videos'] = uploaded_raw_videos;
		data['external_raw_videos'] = external_raw_videos;
		data['remixed_from_coubs'] = remixed_from_coubs != null ? 
			this.remixed_from_coubs.map((v) => v.toJson()).toList()
			: null;
		return data;
	}
}
