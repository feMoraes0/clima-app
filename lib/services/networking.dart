import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future<dynamic> getData() async {
    http.Response response = await http.get(this.url);

    if (response.statusCode == 200) {
      var body = response.body;

      return jsonDecode(body);
    } else {
      print('fail to load data');
    }
  }
}
