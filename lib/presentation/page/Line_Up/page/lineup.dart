import 'package:flutter/material.dart' as flutter;
import 'package:flutter/material.dart';
import 'package:papb_aplication/data/model/Lineup/lineuptim.dart';
import 'package:papb_aplication/data/model/soccermodel.dart';
import 'package:papb_aplication/data/source/lineup.dart';
import 'package:papb_aplication/presentation/page/Homescreen/views/homescreen.dart';
import 'package:papb_aplication/presentation/page/MatchDetail/matchdetail.dart';
import 'package:papb_aplication/presentation/widgets/lineup.dart';

class LineUp extends StatefulWidget {
  final SoccerMatch soccerMatchlineup;

  final int fixtureId;
  const LineUp(
      {Key? key, required this.soccerMatchlineup, required this.fixtureId})
      : super(key: key);

  @override
  LineUpAppState createState() => LineUpAppState();
}

class LineUpAppState extends State<LineUp> {
  late Future<Lineuptim> lineup;
  bool _showLineup1 = true;
  bool _showLineup2 = false;

  @override
  void initState() {
    super.initState();
    lineup = getAllLineup();
  }

  Future<Lineuptim> getAllLineup() async {
    LineupApi lineupapi = LineupApi();
    return await lineupapi.getAllLineup(selectedfixture: widget.fixtureId);
  }

  @override
  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                _showLineup1 = true;
                _showLineup2 =
                    false; // Menampilkan lineup 1 saat Button 1 ditekan
              });
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(150, 50),
              backgroundColor: _showLineup1
                  ? const Color(0xFFF4A58A)
                  : const Color(
                      0xFFF15A59), // Warna non-aktif jika lineup 1 tidak ditampilkan
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text(
              "Button 1",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(width: 10), // Jarak antara tombol
          ElevatedButton(
            onPressed: () {
              setState(() {
                _showLineup1 = false;
                _showLineup2 =
                    true; // Menampilkan lineup 2 saat Button 2 ditekan
              });
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(150, 50),
              backgroundColor: !_showLineup1
                  ? const Color(0xFFF4A58A)
                  : const Color(
                      0xFFF15A59), // Warna non-aktif jika lineup 2 tidak ditampilkan
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text(
              "Button 2",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBoxlineup1(data1) {
    String formation1 = data1.response[0].formation; 
    return Visibility(
      visible: _showLineup1,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: flutter.Colors.black,
                width: 1.0,
              ),
              color: const Color(0xFFF15A59),
            ),
            width: double.maxFinite,
            height: 550,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Formation: $formation1",
                      style: const TextStyle(
                        color: flutter.Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: const Color(0xFFF4A58A),
                  height: 30,
                  width: double.maxFinite,
                  child: const Center(
                    child: Text(
                      "STARTING IX",
                      style: TextStyle(
                        color: flutter.Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 280,
                  child: ListView.builder(
                    itemCount: data1.response?[0].startXi?.length ?? 0,
                    itemBuilder: (BuildContext context, int index) {
                      final player = data1.response?[0].startXi?[index];
                      return LineUpcomponent(
                        number: player!.player!.number.toString(),
                        name: player.player!.name.toString(),
                        BackgroundColor: "",
                      );
                    },
                  ),
                ),
                Container(
                  color: const Color(0xFFF4A58A),
                  height: 30,
                  width: double.maxFinite,
                  child: const Center(
                    child: Text(
                      "SUBTITUTES",
                      style: TextStyle(
                        color: flutter.Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height:
                      165, // Tinggi sesuaikan agar tidak tumpang tindih dengan "STARTING IX"
                  child: ListView.builder(
                      itemCount: data1.response?[0].substitutes?.length ?? 0,
                      itemBuilder: (BuildContext context, int index) {
                        final substitutes =
                            data1.response?[0].substitutes?[index];
                        final number = substitutes!.player!.number.toString();
                        final playerName = substitutes.player!.name.toString();
                        return LineUpcomponent(
                            number: number,
                            name: playerName,
                            BackgroundColor: "");
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBoxlineup2(data1) {
    String formation = data1.response[1].formation; 
    return Visibility(
      visible: _showLineup2,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: flutter.Colors.black,
                width: 2.0,
              ),
              color: const Color(0xFFF15A59),
            ),
            width: double.maxFinite,
            height: 550,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Formation: $formation",
                      style: const TextStyle(
                        color: flutter.Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: const Color(0xFFF4A58A),
                  height: 30,
                  width: double.maxFinite,
                  child: const Center(
                    child: Text(
                      "STARTING IX",
                      style: TextStyle(
                        color: flutter.Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height:
                      280, // Tinggi sesuaikan agar tidak tumpang tindih dengan "SUBTITUTES"
                  child: ListView.builder(
                    itemCount: data1.response?[1].startXi?.length ?? 0,
                    itemBuilder: (BuildContext context, int index) {
                      final player = data1.response?[1].startXi?[index];
                      return LineUpcomponent(
                        number: player!.player!.number.toString(),
                        name: player.player!.name.toString(),
                        BackgroundColor: "",
                      );
                    },
                  ),
                ),
                Container(
                  color: const Color(0xFFF4A58A),
                  height: 30,
                  width: double.maxFinite,
                  child: const Center(
                    child: Text(
                      "SUBTITUTES",
                      style: TextStyle(
                        color: flutter.Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height:
                      165, // Tinggi sesuaikan agar tidak tumpang tindih dengan "STARTING IX"
                  child: ListView.builder(
                      itemCount: data1.response?[1].substitutes?.length ?? 0,
                      itemBuilder: (BuildContext context, int index) {
                        final substitutes =
                            data1.response?[1].substitutes?[index];
                        final number = substitutes!.player!.number.toString();
                        final playerName = substitutes.player!.name.toString();
                        return LineUpcomponent(
                            number: number,
                            name: playerName,
                            BackgroundColor: "");
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
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
                  color: flutter.Colors.white,
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
                        MaterialPageRoute(builder: (context) => Screennn()),
                      );
                    },
                    icon: const Icon(Icons.arrow_back,
                        color: flutter.Colors.white, size: 30),
                  ),
                ),
                const Expanded(
                  child: Text(
                    "English Premier League",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      color: flutter.Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 30),
            Row(
              children: [
                _buildTeamLogo1(),
                const SizedBox(width: 16),
                _buildFullTimeScore(),
                const SizedBox(width: 16),
                _buildTeamLogo2(),
              ],
            ),
            const SizedBox(height: 20),
            _buildButtonRow(),
            const SizedBox(height: 20),
            LayoutBuilder(builder: (context, constraints) {
              return FutureBuilder<Lineuptim>(
                future: getAllLineup(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    Lineuptim data1 = snapshot.data!;
                    // Lineuptim data2 = snapshot.data!;
                    // print("data: $data1");
                    if (constraints.maxWidth > 1100) {
                      _showLineup1 = true;
                      _showLineup2 = true;
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 500, child: _buildBoxlineup1(data1)),
                          const SizedBox(width: 10),
                          SizedBox(width: 500, child: _buildBoxlineup2(data1)),
                        ],
                      );
                    } else {
                      return Column(
                        children: [
                          const SizedBox(height: 10),
                          _buildButton(),
                          const SizedBox(height: 10),
                          _buildBoxlineup1(data1),
                          _buildBoxlineup2(data1),
                        ],
                      );
                    }
                  }
                },
              );
            }),
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
              "${widget.soccerMatchlineup.home?.logoUrl}",
              width: 80,
              height: 80,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
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
              "${widget.soccerMatchlineup.away?.logoUrl}",
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
            color: flutter.Colors.white,
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
              "${widget.soccerMatchlineup.goal?.home}",
              style: const TextStyle(
                color: flutter.Colors.white,
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
                color: flutter.Colors.white,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 30, // Sesuaikan dengan lebar yang Anda inginkan
            ),
            Text(
              "${widget.soccerMatchlineup.goal?.away}",
              style: const TextStyle(
                color: flutter.Colors.white,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
                right: 8.0, left: 8.0), // Jarak 8.0 di semua sisi tombol
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MatchDetailPage(
                            soccerMatch: widget.soccerMatchlineup,
                            fixtureId: 0,
                            hometeamId: 0,
                            awayteamId: 0,
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
            padding: const EdgeInsets.only(
                right: 8.0, left: 8.0), // Jarak 8.0 di semua sisi tombol
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
