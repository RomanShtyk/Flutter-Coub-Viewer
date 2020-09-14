
class Meta {

  String duration;

	Meta.fromJsonMap(Map<String, dynamic> map): 
		duration = map["duration"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['duration'] = duration;
		return data;
	}
}
