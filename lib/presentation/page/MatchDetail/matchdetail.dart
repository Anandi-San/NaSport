import 'package:flutter/material.dart';
import 'package:papb_aplication/data/model/soccermodel.dart';
import 'package:papb_aplication/presentation/page/Homescreen/views/homescreen.dart';
import 'package:papb_aplication/presentation/page/Line_Up/page/lineup.dart';

import '../../../data/model/statistics/statistics.dart';
import '../../../data/source/statistic.dart';

class MatchDetailPage extends StatefulWidget {
  final SoccerMatch soccerMatch;
  final int fixtureId;
  final int hometeamId;
  final int awayteamId;

  const MatchDetailPage(
      {Key? key,
      required this.soccerMatch,
      required this.fixtureId,
      required this.hometeamId,
      required this.awayteamId})
      : super(key: key);

  @override
  MatchDetailState createState() => MatchDetailState();
}

class MatchDetailState extends State<MatchDetailPage> {
  late Future<Statictics> statistics;
  @override
  void initState() {
    super.initState();
    statistics = getStatistics();
    statistics = getStatistic();
  }

  Future<Statictics> getStatistics() async {
    StatisticApi statisticApi = StatisticApi();
    return await statisticApi.getStatisticsForSelectedFixtureAndTeam(
      selectedFixtureId: widget.fixtureId,
      selectedTeamId: widget.hometeamId,
    );
  }

  Future<Statictics> getStatistic() async {
    StatisticApi statisticApi = StatisticApi();
    return await statisticApi.getStatisticsForSelectedFixtureAndTeam(
      selectedFixtureId: widget.fixtureId,
      selectedTeamId: widget.awayteamId,
      // selectedTeamId: wid
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD21312),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16, top: 25),
              child: Text(
                "NaSport",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Screennn()),
                      );
                    },
                    icon: const Icon(Icons.arrow_back,
                        color: Colors.white, size: 30),
                  ),
                ),
                const Expanded(
                  child: Text(
                    "English Premier League",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            // const SizedBox(width: 30),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildTeamLogo1(),
                  const SizedBox(width: 16),
                  _buildFullTimeScore(),
                  const SizedBox(width: 16),
                  _buildTeamLogo2(), // ini yang buat 2
                ],
              ),
            ),
            const SizedBox(height: 20),
            _buildButtonRow(),
            FutureBuilder<Statictics>(
              future: getStatistics(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator(); // Or a loading indicator
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  Statictics data1 = snapshot.data!;
                  return FutureBuilder(
                      future: getStatistic(),
                      builder: (context, response) {
                        if (response.connectionState ==
                            ConnectionState.waiting) {
                          return const CircularProgressIndicator(); // Or a loading indicator
                        } else if (response.hasError) {
                          return Text('Error: ${response.error}');
                        } else {
                          Statictics data2 = response.data!;
                          // print("data2: ${data2.response}");
                          return Column(
                            children: [
                              const SizedBox(height: 20),
                              _buildShots(
                                   data1.response != null &&
                                        data1.response![0].statistics != null &&
                                        data1.response![0].statistics![2]
                                                .value !=
                                            null
                                    ? data1.response![0].statistics![2].value
                                        .toString()
                                    : '0',
                                data2.response != null &&
                                        data2.response![0].statistics != null &&
                                        data2.response![0].statistics![2]
                                                .value !=
                                            null
                                    ? data2.response![0].statistics![2].value
                                        .toString()
                                    : '0',
                              ),
                              const SizedBox(height: 20),
                              _buildShotsOnTarget(
                                  data1.response != null &&
                                        data1.response![0].statistics != null &&
                                        data1.response![0].statistics![0]
                                                .value !=
                                            null
                                    ? data1.response![0].statistics![0].value
                                        .toString()
                                    : '0',
                                data2.response != null &&
                                        data2.response![0].statistics != null &&
                                        data2.response![0].statistics![0]
                                                .value !=
                                            null
                                    ? data2.response![0].statistics![0].value
                                        .toString()
                                    : '0',
                              ),
                              const SizedBox(height: 20),
                              _buildPossession(
                                  data1.response != null &&
                                        data1.response![0].statistics != null &&
                                        data1.response![0].statistics![9]
                                                .value !=
                                            null
                                    ? data1.response![0].statistics![9].value
                                        .toString()
                                    : '0',
                                data2.response != null &&
                                        data2.response![0].statistics != null &&
                                        data2.response![0].statistics![9]
                                                .value !=
                                            null
                                    ? data2.response![0].statistics![9].value
                                        .toString()
                                    : '0',
                              ),
                              const SizedBox(height: 20),
                              _buildPasses(
                                  data1.response != null &&
                                        data1.response![0].statistics != null &&
                                        data1.response![0].statistics![13]
                                                .value !=
                                            null
                                    ? data1.response![0].statistics![13].value
                                        .toString()
                                    : '0',
                                data2.response != null &&
                                        data2.response![0].statistics != null &&
                                        data2.response![0].statistics![13]
                                                .value !=
                                            null
                                    ? data2.response![0].statistics![13].value
                                        .toString()
                                    : '0',
                              ),
                              const SizedBox(height: 20),
                              _buildPassAcuraccy(
                                  data1.response != null &&
                                        data1.response![0].statistics != null &&
                                        data1.response![0].statistics![14]
                                                .value !=
                                            null
                                    ? data1.response![0].statistics![14].value
                                        .toString()
                                    : '0',
                                data2.response != null &&
                                        data2.response![0].statistics != null &&
                                        data2.response![0].statistics![14]
                                                .value !=
                                            null
                                    ? data2.response![0].statistics![14].value
                                        .toString()
                                    : '0',
                              ),
                              const SizedBox(height: 20),
                              _buildFouls(
                                  data1.response != null &&
                                        data1.response![0].statistics != null &&
                                        data1.response![0].statistics![6]
                                                .value !=
                                            null
                                    ? data1.response![0].statistics![6].value
                                        .toString()
                                    : '0',
                                data2.response != null &&
                                        data2.response![0].statistics != null &&
                                        data2.response![0].statistics![6]
                                                .value !=
                                            null
                                    ? data2.response![0].statistics![6].value
                                        .toString()
                                    : '0',
                              ),
                              const SizedBox(height: 20),
                              _buildYellowCard(
                                data1.response != null &&
                                        data1.response![0].statistics != null &&
                                        data1.response![0].statistics![11]
                                                .value !=
                                            null
                                    ? data1.response![0].statistics![11].value
                                        .toString()
                                    : '0',
                                data2.response != null &&
                                        data2.response![0].statistics != null &&
                                        data2.response![0].statistics![10]
                                                .value !=
                                            null
                                    ? data2.response![0].statistics![10].value
                                        .toString()
                                    : '0',
                              ),
                              const SizedBox(height: 20),
                              _buildRedCard(
                                data1.response != null &&
                                        data1.response![0].statistics != null &&
                                        data1.response![0].statistics![11]
                                                .value !=
                                            null
                                    ? data1.response![0].statistics![11].value
                                        .toString()
                                    : '0',
                                data2.response != null &&
                                        data2.response![0].statistics != null &&
                                        data2.response![0].statistics![11]
                                                .value !=
                                            null
                                    ? data2.response![0].statistics![11].value
                                        .toString()
                                    : '0',
                              ),
                              const SizedBox(height: 20),
                              _buildOffsides(
                                  data1.response != null &&
                                        data1.response![0].statistics != null &&
                                        data1.response![0].statistics![8]
                                                .value !=
                                            null
                                    ? data1.response![0].statistics![8].value
                                        .toString()
                                    : '0',
                                data2.response != null &&
                                        data2.response![0].statistics != null &&
                                        data2.response![0].statistics![8]
                                                .value !=
                                            null
                                    ? data2.response![0].statistics![8].value
                                        .toString()
                                    : '0',
                              ),
                              const SizedBox(height: 20),
                              _buildCorners(
                                  data1.response != null &&
                                        data1.response![0].statistics != null &&
                                        data1.response![0].statistics![7]
                                                .value !=
                                            null
                                    ? data1.response![0].statistics![7].value
                                        .toString()
                                    : '0',
                                data2.response != null &&
                                        data2.response![0].statistics != null &&
                                        data2.response![0].statistics![7]
                                                .value !=
                                            null
                                    ? data2.response![0].statistics![7].value
                                        .toString()
                                    : '0',
                              ),
                            ],
                          );
                        }
                      });
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTeamLogo1() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: double.infinity,
              constraints: const BoxConstraints(
                minHeight: 100,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF070A52),
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            Image.network(
              "${widget.soccerMatch.home?.logoUrl}",
              width: 80,
              height: 80,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFullTimeScore() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Full Time",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            // SizedBox(
            //   width: 30, // Sesuaikan dengan lebar yang Anda inginkan
            // ),
            Text(
              "${widget.soccerMatch.goal?.home}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 30, // Sesuaikan dengan lebar yang Anda inginkan
            ),
            const Text(
              "-",
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 30, // Sesuaikan dengan lebar yang Anda inginkan
            ),
            Text(
              "${widget.soccerMatch.goal?.away}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTeamLogo2() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: double.maxFinite,
              constraints: const BoxConstraints(
                minHeight: 100,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF070A52),
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            Image.network(
              "${widget.soccerMatch.away?.logoUrl}",
              width: 80,
              height: 80,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 8.0, right: 8.0), // Jarak 8.0 di semua sisi tombol
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(150, 60),
                backgroundColor: const Color(0xFFF4A58A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                "Match Detail",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LineUp(
                            soccerMatchlineup: widget.soccerMatch,
                            fixtureId: widget.fixtureId,
                          )),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(150, 60),
                backgroundColor: const Color(0xFFF15A59),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                "Line Up",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Widget _buildShots(String tim1, String tim2) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
        child: Text(
          tim1,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      const Text(
        "Shots",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      Padding(
        padding:
            const EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
        child: Text(
          tim2,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}

Widget _buildShotsOnTarget(String tim1, String tim2) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
        child: Text(
          tim1,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      const Text(
        "Shots On Target",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      Padding(
        padding:
            const EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
        child: Text(
          tim2,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}

Widget _buildPossession(String tim1, String tim2) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
        child: Text(
          tim1,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      const Text(
        "Possession",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      Padding(
        padding:
            const EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
        child: Text(
          tim2,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}

Widget _buildPasses(String tim1, String tim2) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
        child: Text(
          tim1,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      const Text(
        "Passes",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      Padding(
        padding:
            const EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
        child: Text(
          tim2,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}

Widget _buildPassAcuraccy(String tim1, String tim2) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
        child: Text(
          tim1,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      const Text(
        "Pass Accuracy",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      Padding(
        padding:
            const EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
        child: Text(
          tim2,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}

Widget _buildFouls(String tim1, String tim2) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
        child: Text(
          tim1,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      const Text(
        "Fouls",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      Padding(
        padding:
            const EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
        child: Text(
          tim2,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}

Widget _buildYellowCard(String tim1, String tim2) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
        child: Text(
          tim1,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      const Text(
        "Yellow Card",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      Padding(
        padding:
            const EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
        child: Text(
          tim2,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}

Widget _buildRedCard(String tim1, String tim2) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
        child: Text(
          tim1,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      const Text(
        "Red Cards",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      Padding(
        padding:
            const EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
        child: Text(
          tim2,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}

Widget _buildOffsides(String tim1, String tim2) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
        child: Text(
          tim1,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      const Text(
        "Offsides",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      Padding(
        padding:
            const EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
        child: Text(
          tim2,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}

Widget _buildCorners(String tim1, String tim2) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
        child: Text(
          tim1,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      const Text(
        "Corners",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      const Spacer(), // Spacer untuk memberikan jarak fleksibel
      Padding(
        padding:
            const EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
        child: Text(
          tim2,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}
