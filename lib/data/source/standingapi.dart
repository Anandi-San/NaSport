import 'dart:convert';
import 'package:http/http.dart';
import 'package:papb_aplication/data/model/standding.dart';

class StandingApi {
  final String apiUrl =
      "https://v3.football.api-sports.io/standings?season=2023&league=39";
  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "e93a90553f65e6ae949c27992ab9e7b2",
  };

  Future<List<Standing>> getAllstanding() async {
    final Uri uri = Uri.parse(apiUrl);
    Response res = await get(uri, headers: headers);
    Map<String, dynamic>? body;

    if (res.statusCode == 200) {
      body = jsonDecode(res.body) as Map<String, dynamic>?;

      List<dynamic> standinglist = body?['response'] ?? [];
      print("Api service: ${body}");

      List<Standing> standing = standinglist
          .map((dynamic item) => Standing.fromJson(item))
          .toList();

      return standing;
    } else {
      return <Standing>[];
    }
  }
}
