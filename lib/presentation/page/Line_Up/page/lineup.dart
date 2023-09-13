import 'package:flutter/material.dart';
import 'package:papb_aplication/presentation/page/Homescreen/views/homescreen.dart';
import 'package:papb_aplication/presentation/page/MatchDetail/matchdetail.dart';

class LineUp extends StatefulWidget {
  const LineUp({Key? key}) : super(key: key);
  @override
  LineUpAppState createState() =>
      LineUpAppState(); // public klau pakai - itu private
}

class LineUpAppState extends State<LineUp> {
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
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
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
              _buildTeamLogo(),
              const SizedBox(width: 16),
              _buildFullTimeScore(),
              const SizedBox(width: 16),
              _buildTeamLogo(),
            ],
          ),
          const SizedBox(height: 20),
          _buildButtonRow(),
        ],
      ),
    );
  }

  Widget _buildTeamLogo() {
    return Container(
      width: 150,
      height: 150,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
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
    );
  }

  Widget _buildFullTimeScore() {
    return const Center(
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
            "8 - 2",
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const MatchDetailPage()), 
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
        const SizedBox(width: 8),
        ElevatedButton(
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
            "Line Upsss",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        )
      ],
    );
  }
}
