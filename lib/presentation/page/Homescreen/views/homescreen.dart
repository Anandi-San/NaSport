import 'package:flutter/material.dart';
// import 'package:papb_aplication/data/model/Fixtures/fixture.dart';
import 'package:papb_aplication/data/model/Fixturess/fixture.dart';
import 'package:papb_aplication/data/model/klasmenttest/fixtures.dart';
import 'package:papb_aplication/data/model/soccermodel.dart';
import 'package:papb_aplication/data/source/api.manager.dart';
import 'package:papb_aplication/data/source/standingapi.dart';
import 'package:papb_aplication/data/source/statistic.dart';
import 'package:papb_aplication/presentation/page/MatchDetail/matchdetail.dart';
import 'package:papb_aplication/presentation/page/standing/standing.dart';
import 'package:papb_aplication/presentation/widgets/listklasnem.dart';

class Screennn extends StatefulWidget {
  const Screennn({Key? key}) : super(key: key);
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<Screennn> {
  final SoccerApi soccerApi = SoccerApi();

// List<SoccerMatchh>? matches;

Future<List<SoccerMatch>> fetchData() async {
  List<SoccerMatch> matches = await soccerApi.getAllMatches();
  return matches;
}

  final StandingApi standingApi = StandingApi();

  Future<Fixtures> fetchDataStanding() async {
    return await standingApi.getAllFixtures();
  }

  final StatisticApi statisticApi = StatisticApi();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    double fontSize = screenWidth < 800 ? 30 : 38;
    double titleFontSize = screenWidth < 800 ? 20 : 28;
    double subtitleFontSize = screenWidth < 800 ? 16 : 22;

    return Scaffold(
      backgroundColor: const Color(0xFFD21312),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: screenWidth < 1000 ? 10 : 250, vertical: 35.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                child: Text(
                  "NaSport",
                  style: TextStyle(
                    fontSize: fontSize,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/image/Epl.png",
                      width: screenWidth * 1.0,
                      height: screenHeight * 0.2,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Your Match",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 30,
                      ),
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 160,
                width: double.maxFinite,
                child: Center(
                  widthFactor: 200,
                  child: SizedBox(
                    child: FutureBuilder(
                      future: fetchData(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (snapshot.hasData &&
                            snapshot.connectionState == ConnectionState.done) {
                          List<SoccerMatch> matches = snapshot.data!;
                          return ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.hasData ? 10 : 0,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MatchDetailPage(
                                          soccerMatch: matches[index],
                                          fixtureId: matches[index].fixture?.id ?? 0,
                                          hometeamId: matches[index].home?.id ?? 0,
                                          awayteamId: matches[index].away?.id ?? 0,
                                        ),
                                      ),
                                    );
                                    },
                                child: Container(
                                  width: 150,
                                  height: 150,
                                  margin: const EdgeInsets.only(
                                      right: 10, top: 10, bottom: 10),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF15A59),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "${matches[index].leagues?.round ?? 0}",
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.network(
                                           "${matches[index].home?.logoUrl ?? 0}",
                                            width: 45,
                                            height: 45,
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            "VS",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Image.network(
                                            "${matches[index].away?.logoUrl ?? 0}",
                                            width: 45,
                                            height: 45,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, top: 8.0, right: 8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "${matches[index].home?.name ?? 0}",
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                            const Spacer(),
                                            Text(
                                              "${matches[index].goal?.home ?? 0}",
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, right: 8.0, top: 5.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "${matches[index].away?.name ?? 0}",
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                            const Spacer(),
                                            Text(
                                              "${matches[index].goal?.away ?? 0}",
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        } else {
                          return Center(
                            child: Text("Failed Get Data! ${snapshot.error}"),
                          );
                        }
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(
                    width: 70,
                    height: 70,
                    child: Image.asset("assets/flag/england.png"),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "English Premier League",
                        style: TextStyle(
                          fontSize: titleFontSize,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "2023/2024",
                        style: TextStyle(
                          fontSize: subtitleFontSize,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10),
              Center(
                child: Container(
                  width: double.maxFinite,
                  height: 300,
                  decoration: BoxDecoration(
                    color: const Color(0xFF070A52),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const ListKlasmen(
                        images: null,
                        teamName: "TeamName",
                        mp: "MP",
                        W: "W",
                        D: "D",
                        L: "L",
                        pts: "Pts",
                      ),
                      const SizedBox(height: 5),
                      Expanded(
                        child: FutureBuilder<Fixtures>(
                          future: fetchDataStanding(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            } else if (snapshot.hasData &&
                                snapshot.connectionState ==
                                    ConnectionState.done) {
                              final Fixtures fixtures = snapshot.data!;
                              List<Response>? response = fixtures.response;
                              if (response!.isNotEmpty) {
                                final Response responseItem = response[0];
                                final League? league = responseItem.league;
                                final List<Standing> standings =
                                    league!.standings![0];

                                return ListView.builder(
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    final Standing standing = standings[index];
                                    final String teamName =
                                        standing.team?.name ?? "Unknown Team";
                                    final String teamLogo =
                                        standing.team?.logo ?? "";
                                    final int mp = standing.all?.played ?? 0;
                                    final int w = standing.all?.win ?? 0;
                                    final int d = standing.all?.draw ?? 0;
                                    final int l = standing.all?.lose ?? 0;
                                    final int pts = standing.points ?? 0;

                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => StandingPage(
                                              fixtures: standings,
                                            ),
                                          ),
                                        );
                                      },
                                      child: ListKlasmen(
                                        images: teamLogo,
                                        teamName: teamName,
                                        mp: "$mp",
                                        W: '$w',
                                        D: '$d',
                                        L: '$l',
                                        pts: '$pts',
                                      ),
                                    );
                                  },
                                );
                              } else {
                                return const Center(
                                  child: Text("No Data Available"),
                                );
                              }
                            } else if (snapshot.hasError) {
                              print("API Error: ${snapshot.error}");
                              return Center(
                                child: Text(
                                  "Failed to Get Data! ${snapshot.error}",
                                  style: const TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              );
                            } else {
                              return const Center(
                                child: Text("No Data Available"),
                              );
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
