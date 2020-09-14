
class Dimensions {

  List<int> big;
  List<int> med;

	Dimensions.fromJsonMap(Map<String, dynamic> map): 
		big = List<int>.from(map["big"]),
		med = List<int>.from(map["med"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['big'] = big;
		data['med'] = med;
		return data;
	}
}
