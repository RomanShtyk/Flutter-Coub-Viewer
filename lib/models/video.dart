import 'package:flutter_infinite_list/models/higher.dart';
import 'package:flutter_infinite_list/models/high.dart';
import 'package:flutter_infinite_list/models/med.dart';

class Video {

  Higher higher;
  High high;
  Med med;

	Video.fromJsonMap(Map<String, dynamic> map): 
		higher = Higher.fromJsonMap(map["higher"]),
		high = High.fromJsonMap(map["high"]),
		med = Med.fromJsonMap(map["med"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['higher'] = higher == null ? null : higher.toJson();
		data['high'] = high == null ? null : high.toJson();
		data['med'] = med == null ? null : med.toJson();
		return data;
	}
}
