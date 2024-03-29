class Avatar_versions {
  String template;
  List<String> versions;

  Avatar_versions.fromJsonMap(Map<String, dynamic> map)
      : template = map["template"],
        versions = List<String>.from(map['versions'] ?? const Iterable.empty());

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['template'] = template;
    data['versions'] = versions;
    return data;
  }
}
