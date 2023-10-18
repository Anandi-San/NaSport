import 'dart:convert';
import 'package:http/http.dart';
import 'package:papb_aplication/data/model/klasment.dart';
import 'package:papb_aplication/data/model/soccermodel.dart';
// import 'soccer_api.dart';

class StatisticApi {
  final String apiKey = "e93a90553f65e6ae949c27992ab9e7b2";
  static const baseUrl = "https://v3.football.api-sports.io";

  Future<List<Statistic>> getStatisticsForSelectedFixtureAndTeam(
      int selectedFixtureId, int selectedTeamId) async {
    final String apiUrl =
        "$baseUrl/fixtures/statistics?fixture=$selectedFixtureId&team=$selectedTeamId";

    final Uri uri = Uri.parse(apiUrl);
    final Map<String, String> headers = {
      'x-rapidapi-host': "v3.football.api-sports.io",
      'x-rapidapi-key': apiKey,
    };

    Response res = await get(uri, headers: headers);
    var body;

    if (res.statusCode == 200) {
      body = jsonDecode(res.body);
      List<dynamic> statisticsList = body['response'];
      List<Statistic> statistics = statisticsList
          .map((dynamic item) => Statistic.fromJson(item))
          .toList();

      return statistics;
    } else {
      return <Statistic>[];
    }
  }
}