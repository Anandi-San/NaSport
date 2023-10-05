import 'dart:convert';

import 'package:http/http.dart';
// import 'package:papb_aplication/data/model/soccermodel.dart';
import 'package:papb_aplication/data/model/statistic.dart';

class SoccerApi {
  final String apiUrl =
      "  https://v3.football.api-sports.io/fixtures/statistics?season=2023&league=39";
  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "e93a90553f65e6ae949c27992ab9e7b2",

  };

  Future<List<StatisticTeam>> getAllMatches() async {
    final Uri uri = Uri.parse(apiUrl);
    Response res = await get(uri, headers: headers);
    var body;

    if (res.statusCode == 200) {
      body = jsonDecode(res.body);
      List<dynamic> statisticsList = body['response'];
      // print("Api service: ${body}");
      List<StatisticTeam> statistics = statisticsList
          .map((dynamic item) => StatisticTeam.fromJson(item))
          .toList();

      return statistics;
    } else {
      return <StatisticTeam>[];
    }
  }
}
