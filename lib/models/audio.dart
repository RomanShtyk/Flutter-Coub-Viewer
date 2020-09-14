import 'package:flutter_infinite_list/models/high.dart';
import 'package:flutter_infinite_list/models/med.dart';

class Audio {

  High high;
  Med med;

	Audio.fromJsonMap(Map<String, dynamic> map): 
		high = High.fromJsonMap(map["high"]),
		med = Med.fromJsonMap(map["med"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['high'] = high == null ? null : high.toJson();
		data['med'] = med == null ? null : med.toJson();
		return data;
	}
}
