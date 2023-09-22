// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:papb_aplication/presentation/page/MatchDetail/matchdetail.dart';
import 'package:papb_aplication/presentation/widgets/bottombar.dart';

// Import yang diperlukan di atas

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<Map<String, dynamic>> klasemenData = [
    {
      "team": "Arsenal",
      "gambar": "assets/flag/arsenal.png",
      "mp": 10,
      "w": 5,
      "d": 3,
      "l": 2,
      "pts": 18,
      "gf": 20,
      "ga": 12,
      "gd": 8,
    },
    {
      "team": "Liverpool",
      "gambar": "assets/flag/arsenal.png",
      "mp": 10,
      "w": 6,
      "d": 2,
      "l": 2,
      "pts": 20,
      "gf": 22,
      "ga": 10,
      "gd": 12,
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;


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
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/image/Epl.png",
              width: screenWidth * 8.0,
              height: screenHeight * 0.2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search Your Match",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MatchDetailPage(),
                      ),
                    );
                  },
                  child: Container(
                    width: 132,
                    height: 132,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF15A59),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Regular Season",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/flag/arsenal.png",
                                width: 45, height: 45),
                            const SizedBox(width: 10),
                            const Text(
                              "VS",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Image.asset("assets/flag/arsenal.png",
                                width: 45, height: 45),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                          child: Row(
                            children: [
                              Text(
                                "Arsenal",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "7",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
                          child: Row(
                            children: [
                              Text(
                                "Arsenal",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "8",
                                style: TextStyle(
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
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  width: 70,
                  height: 70,
                  child: Image.asset("assets/flag/england.png"),
                ),
              ),
              const SizedBox(width: 10),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "English Premier League",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "2023/2024",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: const Color(0xFF070A52),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Team",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "MP",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "W",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "D",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "L",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "PTS",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Expanded(
                    child: ListView.builder(
                      itemCount: klasemenData.length, // Menggunakan semua data tim
                      itemBuilder: (context, index) {
                        final data = klasemenData[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              // Logo tim
                              Image.asset(
                                data["gambar"],
                                width: 30,
                                height: 30,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                data["team"],
                                style: const TextStyle(fontSize: 16, color: Colors.white),
                              ),
                              const Spacer(),
                              Text(
                                data["mp"].toString(),
                                style: const TextStyle(fontSize: 16, color: Colors.white),
                              ),
                              const SizedBox(width: 18),
                              Text(
                                data["w"].toString(),
                                style: const TextStyle(fontSize: 16, color: Colors.white),
                              ),
                              const SizedBox(width: 15),
                              Text(
                                data["d"].toString(),
                                style: const TextStyle(fontSize: 16, color: Colors.white),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                data["l"].toString(),
                                style: const TextStyle(fontSize: 16, color: Colors.white),
                              ),
                              const SizedBox(width: 17),
                              Text(
                                data["pts"].toString(),
                                style: const TextStyle(fontSize: 16, color: Colors.white),
                              ),
                              const SizedBox(width: 14),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
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
}

