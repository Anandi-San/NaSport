import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:papb_aplication/data/model/statistics/statistics.dart';

class StatisticApi {
  final String apiKey = "e93a90553f65e6ae949c27992ab9e7b2";
  static const baseUrl = "https://v3.football.api-sports.io";

  Future<Statictics> getStatisticsForSelectedFixtureAndTeam(
      {required int selectedFixtureId, required int selectedTeamId}) async {
    final String apiUrl =
        "$baseUrl/fixtures/statistics?fixture=$selectedFixtureId&team=$selectedTeamId";

    final Uri uri = Uri.parse(apiUrl);
    final Map<String, String> headers = {
      'x-rapidapi-host': "v3.football.api-sports.io",
      'x-rapidapi-key': apiKey,
    };

    http.Response response = await http.get(uri, headers: headers);
    print("Response status: ${response.statusCode}");

    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      // print("Response : $body");
      var statistics = Statictics.fromJson(body);

      return statistics;
    } else {
      throw Exception('Failed to load statistics');
    }
  }
}
