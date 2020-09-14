import 'package:flutter_infinite_list/models/html5.dart';
import 'package:flutter_infinite_list/models/mobile.dart';
import 'package:flutter_infinite_list/models/share.dart';

class File_versions {

  Html5 html5;
  Mobile mobile;
  Share share;

	File_versions.fromJsonMap(Map<String, dynamic> map): 
		html5 = Html5.fromJsonMap(map["html5"]),
		mobile = Mobile.fromJsonMap(map["mobile"]),
		share = Share.fromJsonMap(map["share"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['html5'] = html5 == null ? null : html5.toJson();
		data['mobile'] = mobile == null ? null : mobile.toJson();
		data['share'] = share == null ? null : share.toJson();
		return data;
	}
}
