import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:week_8_2/data/consts.dart';

class FetchHelper {
  final String baseUrl;
  final String request;
  final String parameters;
  final int limit;

  FetchHelper(
      {this.baseUrl = Consts.baseUrl,
      this.request = Consts.request,
      this.parameters = '',
      this.limit = Consts.limit});

  Future<List<dynamic>> getGif() async {
    final fulUrl =
        '$baseUrl$request?&api_key=${Consts.apiKey}&q=$parameters&limit=$limit';
    final response = await http.get(Uri.parse(fulUrl));
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      var jsonData = json['data'];

      return jsonData;
    } else {
      throw Exception('Ошибка');
    }
  }
}
