import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:papb_aplication/data/model/Lineup/lineuptim.dart';
// import 'package:papb_aplication/data/model/standding.dart';

// class LineupApi {
//   late final String apiUrl;
//   static const headers = {
//     'x-rapidapi-host': "v3.football.api-sports.io",
//     'x-rapidapi-key': "e93a90553f65e6ae949c27992ab9e7b2",
//   };

//   LineupApi({required int selectedfixture}) {
//     apiUrl = "https://v3.football.api-sports.io/fixtures/lineups?fixture=$selectedfixture";
//   }

//   Future<Lineuptim> getAllLineup() async {
//     final Uri uri = Uri.parse(apiUrl);
//     Response res = await get(uri, headers: headers);
//     var body;

//     if (res.statusCode == 200) {
//       body = jsonDecode(res.body);
//       List<dynamic> standinglist = body?['response'];
//       print("Api service: ${body}");
//       List<Lineuptim> standing = lineulist
//           .map((dynamic item) => Lineuptim.fromJson(item))
//           .toList();

//       return standing;
//     } else {
//       return <Lineuptim>[];
//     }
//   }
// }


// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:papb_aplication/data/model/statistics/statistics.dart';

class LineupApi {
  final String apiKey = "e93a90553f65e6ae949c27992ab9e7b2";
  static const baseUrl = "https://v3.football.api-sports.io";

  Future<Lineuptim> getAllLineup (
      {required int selectedfixture}) async {
    final String apiUrl =
        "$baseUrl/fixtures/lineups?fixture=$selectedfixture";

    final Uri uri = Uri.parse(apiUrl);
    final Map<String, String> headers = {
      'x-rapidapi-host': "v3.football.api-sports.io",
      'x-rapidapi-key': apiKey,
    };

    http.Response response = await http.get(uri, headers: headers);
    // print("Response status: ${response.statusCode}");

    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      // print("Response : $body");
      var lineup = Lineuptim.fromJson(body);

      return lineup;
    } else {
      throw Exception('Failed to load statistics');
    }
  }
}
