import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getDataFromApi() async {
    try {
      http.Response response = await http.get(Uri.parse(url));
      String data = response.body;
      return jsonDecode(data);
    } catch (e) {
      print(e);
    }
  }
}
