import 'package:flutter_infinite_list/models/meta.dart';

class Remixed_from_coubs {

  int id;
  String title;
  String url;
  String image;
  String image_retina;
  Meta meta;
  Object duration;
  String coub_channel_title;
  String coub_channel_permalink;
  int coub_views_count;
  String coub_permalink;

	Remixed_from_coubs.fromJsonMap(Map<String, dynamic> map): 
		id = map["id"],
		title = map["title"],
		url = map["url"],
		image = map["image"],
		image_retina = map["image_retina"],
		meta = Meta.fromJsonMap(map["meta"]),
		duration = map["duration"],
		coub_channel_title = map["coub_channel_title"],
		coub_channel_permalink = map["coub_channel_permalink"],
		coub_views_count = map["coub_views_count"],
		coub_permalink = map["coub_permalink"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['title'] = title;
		data['url'] = url;
		data['image'] = image;
		data['image_retina'] = image_retina;
		data['meta'] = meta == null ? null : meta.toJson();
		data['duration'] = duration;
		data['coub_channel_title'] = coub_channel_title;
		data['coub_channel_permalink'] = coub_channel_permalink;
		data['coub_views_count'] = coub_views_count;
		data['coub_permalink'] = coub_permalink;
		return data;
	}
}
