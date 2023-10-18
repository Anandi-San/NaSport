import 'package:flutter/material.dart';
import 'package:papb_aplication/data/model/soccermodel.dart';
import 'package:papb_aplication/presentation/page/Homescreen/views/homescreen.dart';
import 'package:papb_aplication/presentation/page/MatchDetail/matchdetail.dart';
import 'package:papb_aplication/presentation/widgets/lineup.dart';

class LineUp extends StatefulWidget {
  final SoccerMatch soccerMatchlineup;
  const LineUp({Key? key, required this.soccerMatchlineup})
      : super(key: key); 

  @override
  LineUpAppState createState() =>
      LineUpAppState(); 
}

class LineUpAppState extends State<LineUp> {
  bool _showLineup1 = true;
  bool _showLineup2 = false;

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

  Widget _buildBoxlineup1() {
    return Visibility(
      visible: _showLineup1,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1.0,
              ),
              color: const Color(0xFFF15A59),
            ),
            width: double.maxFinite,
            height: 550,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Formation",
                      style: TextStyle(
                        color: Colors.white,
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
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 280,
                  child: ListView.builder(
                    itemCount: 11,
                    itemBuilder: (BuildContext context, int index) {
                      return LineUpcomponent(
                          number: "${index + 1}", name: "Player ${index + 1}", BackgroundColor: "",);
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
                        color: Colors.white,
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
                      itemCount: 7,
                      itemBuilder: (BuildContext context, int index) {
                        final number = (index + 1)
                            .toString(); // Nomor dapat diambil dari indeks + 1
                        final playerName = "Pemain ${index + 1}";
                        return LineUpcomponent(
                            number: number, name: playerName, BackgroundColor: "");
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBoxlineup2() {
    return Visibility(
      visible: _showLineup2,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
              color: const Color(0xFFF15A59),
            ),
            width: double.maxFinite,
            height: 550,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Formation",
                      style: TextStyle(
                        color: Colors.white,
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
                        color: Colors.white,
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
                    itemCount: 11,
                    itemBuilder: (BuildContext context, int index) {
                      final number = (index + 1).toString();
                      final playerName = "Pemain ${index + 1}";
                      return LineUpcomponent(number: number, name: playerName, BackgroundColor: "",);
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
                        color: Colors.white,
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
                    itemCount: 7,
                    itemBuilder: (BuildContext context, int index) {
                      final number = (index + 1)
                          .toString(); // Nomor dapat diambil dari indeks + 1
                      final playerName = "Pemain ${index + 1}";
                      final backgroundColor = Colors.white.toString();
                      return LineUpcomponent(
                        number: number,
                        name: playerName,
                        BackgroundColor: backgroundColor,
                      );
                    },
                  ),
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
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const Screennn()),
                        (route) => false,
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
              if (constraints.maxWidth > 1100) {
                _showLineup1 = true;
                _showLineup2 = true;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 500, child: _buildBoxlineup1()),
                    const SizedBox(width: 10),
                    SizedBox(width: 500, child: _buildBoxlineup2()),
                  ],
                );
              } else {
                return Column(
                  children: [
                    const SizedBox(height: 10),
                    _buildButton(),
                    const SizedBox(height: 10),
                    _buildBoxlineup1(),
                    // const SizedBox(height: 20),
                    _buildBoxlineup2(),
                  ],
                );
              }
            })
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
              widget.soccerMatchlineup.home.logoUrl,
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
              widget.soccerMatchlineup.away.logoUrl,
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
              "${widget.soccerMatchlineup.goal.home}",
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
              "${widget.soccerMatchlineup.goal.away}",
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
