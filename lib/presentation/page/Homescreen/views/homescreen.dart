import 'package:flutter/material.dart';
// import 'package:papb_aplication/data/model/klasmenttest/fixtures.dart';
// import 'package:papb_aplication/data/model/klasment.dart';
// import 'package:papb_aplication/data/model/klasmenttest/klasmennt.dart';
// import 'package:papb_aplication/data/model/klasmenttest/klasmenttest.dart';
// import 'package:papb_aplication/data/model/klasmenttest/klasmennnnn.dart';
// import 'package:papb_aplication/data/model/standding.dart';
import 'package:papb_aplication/data/model/soccermodel.dart';
// import 'package:papb_aplication/data/model/standding.dart';
import 'package:papb_aplication/data/source/api.manager.dart';
import 'package:papb_aplication/data/source/standingapi.dart';
import 'package:papb_aplication/presentation/page/MatchDetail/matchdetail.dart';
import 'package:papb_aplication/presentation/page/standing/standing.dart';
import 'package:papb_aplication/presentation/widgets/listklasnem.dart';
// import 'package:papb_aplication/data/model/Standingmodel.dart';

// import '../../../../data/model/standding.dart';

class Screennn extends StatefulWidget {
  const Screennn({Key? key}) : super(key: key);
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<Screennn> {
  final SoccerApi soccerApi = SoccerApi();

  // List<SoccerMatch>? matches;

  Future<List<SoccerMatch>> fetchData() async {
    final matchesData = await soccerApi.getAllMatches();
    if (matchesData.isNotEmpty) {
      return matchesData;
    } else {
      return [];
    }
  }

  final StandingApi standingApi = StandingApi();

  Future<void> fetchDataStanding() async {
    final klasmentData = await standingApi.getAllFixtures();
    // if (klasmentData.isNotEmpty) {
    //   return klasmentData;
    // } else {
    //   return [];
    // }
    print('klasmentData: $klasmentData');
    // return klasmentData;
  }

  

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
              EdgeInsets.symmetric(horizontal: screenWidth < 1000 ? 10 : 250),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
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
                                        matches[index].league.round,
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
                                            matches[index].home.logoUrl,
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
                                            matches[index].away.logoUrl,
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
                                              matches[index].home.name,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                            const Spacer(),
                                            Text(
                                              "${matches[index].goal.home ?? 0}",
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
                                              matches[index].away.name,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                            const Spacer(),
                                            Text(
                                              "${matches[index].goal.away ?? 0}",
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
                  Container(
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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StandingPage()),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const ListKlasmen(
                          images: "",
                          teamName: "Team",
                          mp: "MP",
                          W: "W",
                          D: "D",
                          L: "L",
                          pts: "Pts",
                        ),
                        const SizedBox(height: 5),
                        Expanded(
                          child: FutureBuilder(
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
                                // List<List<Standing>>? standing = snapshot.data!;
                                return ListView.builder(
                                  itemCount: 5,
                                  itemBuilder: (context, index) {                                    // print(standings);
                                    // return ListKlasmen(
                                    //   images: standings.team!.logo.toString(),
                                    //   teamName: standings.team!.name.toString(),
                                    //   mp: "${standings.all!.played}",
                                    //   W: "${standings.all!.win}",
                                    //   D: "${standings.all!.draw}",
                                    //   L: "${standings.all!.lose}",
                                    //   pts: "${standings.points}",
                                    // );
                                    return const Placeholder();
                                    // return ListKlasmen(
                                      // images: ,
                                    // );
                                  },
                                );
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
                        ),
                      ],
                    ),
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
