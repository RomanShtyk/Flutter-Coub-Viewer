
class Chunks {

  String template;
  List<String> versions;
  List<int> chunks;

	Chunks.fromJsonMap(Map<String, dynamic> map): 
		template = map["template"],
		versions = List<String>.from(map["versions"]),
		chunks = List<int>.from(map["chunks"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['template'] = template;
		data['versions'] = versions;
		data['chunks'] = chunks;
		return data;
	}
}
