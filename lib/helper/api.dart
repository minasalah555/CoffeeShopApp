import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  dynamic get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    print(response.statusCode);
    if (response.statusCode == 200) {
      List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData;
    } else {
      throw Exception('error in get data from Api ${response.statusCode}');
    }
  }
}
