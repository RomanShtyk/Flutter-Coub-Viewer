
class Tags {

  int id;
  String title;
  String value;

	Tags.fromJsonMap(Map<String, dynamic> map): 
		id = map["id"],
		title = map["title"],
		value = map["value"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['title'] = title;
		data['value'] = value;
		return data;
	}
}
