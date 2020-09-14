
class First_frame_versions {

  String template;
  List<String> versions;

	First_frame_versions.fromJsonMap(Map<String, dynamic> map): 
		template = map["template"],
		versions = List<String>.from(map["versions"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['template'] = template;
		data['versions'] = versions;
		return data;
	}
}
