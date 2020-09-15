import 'dart:convert';
import 'dart:io';

import 'package:flutter_infinite_list/models/CoubResp.dart';
import 'package:http/http.dart' as http;

class CoubRepository {
  Future<CoubResp> fetchHotCoubs(int page) async {
    try {
      var url =
          Uri.encodeFull('http://coub.com/api/v2/timeline/hot?page=$page');
      var response = await http.get(url);
      Map<String, dynamic> map = json.decode(response.body);
      return CoubResp.fromJsonMap(map);
    } catch (e) {
      if (e is IOException) {
        return null;
      } else {
        print(e.toString());
        return null;
      }
    }
  }
}
