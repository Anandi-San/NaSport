import 'package:flutter/material.dart';
import 'package:papb_aplication/presentation/page/Homescreen/views/homescreen.dart';
import 'package:papb_aplication/presentation/page/Line_Up/page/lineup.dart';
import 'package:papb_aplication/presentation/widgets/bottombar.dart';

class MatchDetailPage extends StatefulWidget {
  const MatchDetailPage({Key? key}) : super(key: key);

  @override
  _MatchDetailState createState() => _MatchDetailState();
}

class _MatchDetailState extends State<MatchDetailPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD21312),
      body: Column(
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
                      MaterialPageRoute(builder: (context) => HomeScreen()),
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
          const SizedBox(height: 20),
          _buildShots(),
          const SizedBox(height: 20),
          _buildShotsOnTarget(),
          const SizedBox(height: 20),
          _buildPossession(),
          const SizedBox(height: 20),
          _buildPasses(),
          const SizedBox(height: 20),
          _buildPassAcuraccy(),
          const SizedBox(height: 20),
          _buildFouls(),
          const SizedBox(height: 20),
          _buildYellowCard(),
          const SizedBox(height: 20),
          _buildRedCard(),
          const SizedBox(height: 20),
          _buildOffsides(),
          const SizedBox(height: 20),
          _buildCorners(),
        ],
      ),
      bottomNavigationBar: BottomBarPage(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
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
            Image.asset(
              "assets/flag/arsenal.png",
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
    return const Expanded(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Full Time",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "3 - 1",
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
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
            Image.asset(
              "assets/flag/mu1.png",
              width: 140,
              height: 140,
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
              onPressed: () {
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
                left: 8.0, right: 8.0), // Jarak 8.0 di semua sisi tombol
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const LineUp()), // Ganti dengan nama kelas LineUp yang sesuai
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

  Widget _buildShots() {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
          child: Text(
            "10",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Text(
          "Shots",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Padding(
          padding: EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
          child: Text(
            "12",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildShotsOnTarget() {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
          child: Text(
            "10",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Text(
          "Shots On Target",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Padding(
          padding: EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
          child: Text(
            "12",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPossession() {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
          child: Text(
            "10",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Text(
          "Possession",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Padding(
          padding: EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
          child: Text(
            "12" + "%",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasses() {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
          child: Text(
            "10",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Text(
          "Passes",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Padding(
          padding: EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
          child: Text(
            "12",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPassAcuraccy() {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
          child: Text(
            "10",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Text(
          "Pass Accuracy",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Padding(
          padding: EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
          child: Text(
            "12",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFouls() {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
          child: Text(
            "10",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Text(
          "Fouls",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Padding(
          padding: EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
          child: Text(
            "12",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildYellowCard() {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
          child: Text(
            "10",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Text(
          "Yellow Card",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Padding(
          padding: EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
          child: Text(
            "12",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRedCard() {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
          child: Text(
            "10",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Text(
          "Red Cards",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Padding(
          padding: EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
          child: Text(
            "12",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildOffsides() {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
          child: Text(
            "10",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Text(
          "Offsides",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Padding(
          padding: EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
          child: Text(
            "12",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCorners() {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.0), // Padding 20 ke ujung kiri
          child: Text(
            "10",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Text(
          "Corners",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(), // Spacer untuk memberikan jarak fleksibel
        Padding(
          padding: EdgeInsets.only(right: 20.0), // Padding 20 ke ujung kanan
          child: Text(
            "12",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
