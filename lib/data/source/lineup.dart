import 'dart:convert';
import 'package:http/http.dart';
import 'package:papb_aplication/data/model/standding.dart';

class LineupApi {
  late final String apiUrl;
  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "e93a90553f65e6ae949c27992ab9e7b2",
  };

  LineupApi({required int selectedfixture}) {
    apiUrl = "https://v3.football.api-sports.io/fixtures/lineups?fixture=$selectedfixture";
  }

  Future<List<Klasment>> getAllLineup() async {
    final Uri uri = Uri.parse(apiUrl);
    Response res = await get(uri, headers: headers);
    var body;

    if (res.statusCode == 200) {
      body = jsonDecode(res.body);
      List<dynamic> standinglist = body?['response'];
      print("Api service: ${body}");
      List<Klasment> standing = standinglist
          .map((dynamic item) => Klasment.fromJson(item))
          .toList();

      return standing;
    } else {
      return <Klasment>[];
    }
  }
}
