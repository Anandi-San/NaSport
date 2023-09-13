import 'dart:convert';

import 'package:http/http.dart';
import 'package:papb_aplication/data/model/soccermodel.dart';

class SoccerApi {
  final String apiUrl = "https://v3.football.api-sports.io/fixtures?season=2020&league=39";
  static const api_Key = "e93a90553f65e6ae949c27992ab9e7b2";
  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': api_Key
  };


Future<List<SoccerMatch>> getAllMatches() async {
  final Uri uri = Uri.parse(apiUrl);
  Response res = await get(uri, headers: headers);
  var body;

  if (res.statusCode == 200) {
    body = jsonDecode(res.body);
    List<dynamic> matchesList = body['response'];
    print("Api service : ${body}");
    List<SoccerMatch> matches = matchesList
        .map((dynamic item) => SoccerMatch.fromJson(item))
        .toList();

    return matches;
  } else {
    // Tambahkan pernyataan return untuk mengembalikan nilai default atau list kosong
    return <SoccerMatch>[];
  }
}

}
