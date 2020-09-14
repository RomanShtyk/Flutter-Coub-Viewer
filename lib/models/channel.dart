import 'package:flutter_infinite_list/models/avatar_versions.dart';

class Channel {

  int id;
  String permalink;
  String title;
  Object description;
  int followers_count;
  int following_count;
  Avatar_versions avatar_versions;

	Channel.fromJsonMap(Map<String, dynamic> map): 
		id = map["id"],
		permalink = map["permalink"],
		title = map["title"],
		description = map["description"],
		followers_count = map["followers_count"],
		following_count = map["following_count"],
		avatar_versions = Avatar_versions.fromJsonMap(map["avatar_versions"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['permalink'] = permalink;
		data['title'] = title;
		data['description'] = description;
		data['followers_count'] = followers_count;
		data['following_count'] = following_count;
		data['avatar_versions'] = avatar_versions == null ? null : avatar_versions.toJson();
		return data;
	}
}
