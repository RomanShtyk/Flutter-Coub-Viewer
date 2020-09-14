
class Mobile {

  String video;
  List<String> audio;

	Mobile.fromJsonMap(Map<String, dynamic> map): 
		video = map["video"],
		audio = List<String>.from(map["audio"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['video'] = video;
		data['audio'] = audio;
		return data;
	}
}
