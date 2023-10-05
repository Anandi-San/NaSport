import 'dart:convert';
import 'package:http/http.dart';
import 'package:papb_aplication/data/model/klasmenttest/fixtures.dart';
// import 'package:papb_aplication/data/model/klasmenttest/klasmennnnn.dart';
// import 'package:papb_aplication/data/model/standingmodel.dart';
// import 'package:papb_aplication/data/model/klasment.dart';
// import 'package:papb_aplication/data/model/klasmenttest/klasmennt.dart';
// import 'package:papb_aplication/data/model/soccermodel.dart';
// import 'package:papb_aplication/data/model/klasmenttest/klasmenttest.dart';
// import 'package:papb_aplication/data/model/soccermodel.dart';
// import 'package:papb_aplication/data/model/standding.dart';
// import 'package:papb_aplication/data/model/standding.dart';

class StandingApi {
  final String apiUrl =
      "https://v3.football.api-sports.io/standings?season=2023&league=39";
  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "e93a90553f65e6ae949c27992ab9e7b2",
  };

  // Future<List<Leagueeee>> getAllstanding() async {
  //   final Uri uri = Uri.parse(apiUrl);
  //   Response res = await get(uri, headers: headers);
  //   var body;

  //   if (res.statusCode == 200) {
  //     body = jsonDecode(res.body);
  //     List<dynamic> standingList = body?['response'];
  //     print("Api service: ${body}");
  //     List<Leagueeee> standing = standingList
  //         .map((dynamic item) => Leagueeee.fromJson(item))
  //         .toList();

  //     return standing;
  //   } else {
  //     return <Leagueeee>[];
  //   }
  // }

  getAllFixtures() async {
    final Uri uri = Uri.parse(apiUrl);
    final res = await get(uri, headers: headers);
    var body;

    if (res.statusCode == 200) {
      body = jsonDecode(res.body);
      // print('decode json; ${jsonDecode(res.body)}');
      final fixtures = Fixtures.fromJson(body);
      print('fixtures: $fixtures');
      return fixtures;
    } else {
      return <Fixtures>[];
    }
  }
}
