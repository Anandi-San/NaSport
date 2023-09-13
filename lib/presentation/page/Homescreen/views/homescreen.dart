import 'package:flutter/material.dart';
import 'package:papb_aplication/presentation/page/MatchDetail/matchdetail.dart';
import 'package:papb_aplication/presentation/widgets/bottombar.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset("assets/image/Epl.png"),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MatchDetailPage()));
                },
                child: Container(
                  width: 132,
                  height: 132,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF15A59),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(child: Text("Kotak 1")),
                ),
              ),
              Container(
                width: 132,
                height: 132,
                decoration: BoxDecoration(
                  color: const Color(0xFFF15A59),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(child: Text("Kotak 2")),
              ),
              Container(
                width: 132,
                height: 132,
                decoration: BoxDecoration(
                  color: const Color(0xFFF15A59),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(child: Text("Kotak 3")),
              ),
            ],
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
                    "English premier League",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
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
            padding:
                const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
            child: Container(
                width: double.infinity,
                height: 200, // blm
                decoration: BoxDecoration(
                  color: const Color(0xFF070A52),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 15.0),
                      child: Text("Team",
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                    Spacer(),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 10.0, left: 10.0, right: 15),
                      child: Text("MP   W   D   L   PTS   GF   GA   GD",
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                    )
                  ],
                )),
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
