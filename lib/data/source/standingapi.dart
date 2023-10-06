import 'dart:convert';
import 'package:http/http.dart';
import 'package:papb_aplication/data/model/klasmenttest/fixtures.dart';

class StandingApi {
  final String apiUrl =
      "https://v3.football.api-sports.io/standings?season=2023&league=39";
  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "e93a90553f65e6ae949c27992ab9e7b2",
  };

  getAllFixtures() async {
    final Uri uri = Uri.parse(apiUrl);
    final res = await get(uri, headers: headers);

    if (res.statusCode == 200) {
      final body = jsonDecode(res.body);
      // final prettyPrintedJson = const JsonEncoder.withIndent('  ').convert(body);
      // print('Pretty Printed JSON:\n$prettyPrintedJson');

      final fixtures = Fixtures.fromJson(body);
      return fixtures;
    } else {
      throw Exception("Failed to load fixtures");
    }
  }
}
