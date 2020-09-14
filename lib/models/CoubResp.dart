import 'package:flutter_infinite_list/models/coubs.dart';

class CoubResp {
  int page;
  int per_page;
  int total_pages;
  int next;
  List<Coubs> coubs;

  CoubResp.fromJsonMap(Map<String, dynamic> map)
      : page = map["page"],
        per_page = map["per_page"],
        total_pages = map["total_pages"],
        next = map["next"],
        coubs =
            List<Coubs>.from(map["coubs"].map((it) => Coubs.fromJsonMap(it)));

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = page;
    data['per_page'] = per_page;
    data['total_pages'] = total_pages;
    data['next'] = next;
    data['coubs'] =
        coubs != null ? this.coubs.map((v) => v.toJson()).toList() : null;
    return data;
  }
}
