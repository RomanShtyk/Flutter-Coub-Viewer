class Share {
  String mDefault;

  Share.fromJsonMap(Map<String, dynamic> map) : mDefault = map["default"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['default'] = mDefault;
    return data;
  }
}
