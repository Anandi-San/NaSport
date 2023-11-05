import 'dart:convert';
import 'package:http/http.dart';
// import 'package:papb_aplication/data/model/Fixturess/fixture.dart';
import 'package:papb_aplication/data/model/soccermodel.dart';

class SoccerApi {
  final String apiUrl =
      "https://v3.football.api-sports.io/fixtures?season=2023&league=39";
  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "e93a90553f65e6ae949c27992ab9e7b2",
  };

  Future<List<SoccerMatch>> getAllMatches() async {
    final Uri uri = Uri.parse(apiUrl);
    final res = await get(uri, headers: headers);

    if (res.statusCode == 200) {
      final body = jsonDecode(res.body);
      // print("hasil: $body");
      final List<dynamic> matchesList = body['response'];
      List<SoccerMatch> matches = matchesList
          .map((dynamic item) => SoccerMatch.fromJson(item))
          .toList();
      return matches;
    } else {
      throw Exception("Failed to load fixtures");
    }
  }
}
