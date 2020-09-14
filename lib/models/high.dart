
class High {

  String url;
  int size;

	High.fromJsonMap(Map<String, dynamic> map): 
		url = map["url"],
		size = map["size"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['url'] = url;
		data['size'] = size;
		return data;
	}
}
