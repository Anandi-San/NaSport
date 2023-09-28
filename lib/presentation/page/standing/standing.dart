import 'package:flutter/material.dart';
import 'package:papb_aplication/presentation/page/Homescreen/views/homescreen.dart';
import 'package:papb_aplication/presentation/widgets/listklasnem.dart';

class StandingPage extends StatelessWidget {
  const StandingPage({Key? key});

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
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                const Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "STANDING",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Image.asset(
                    "assets/flag/logo.png",
                    width: 140,
                    height: 140,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListKlasmen(
                    mp: "MP",
                    images: "assets/flag/3.png",
                    teamName: "Team",
                    W: "W",
                    D: "D",
                    L: "L",
                    pts: "Pts",
                  ),
                  // Tambahkan widget ListKlasmen lainnya jika diperlukan
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              width: double.infinity,
              height: 1,
              color: Colors.white,
            ),
            ListView.builder(
              shrinkWrap: true, // Tambahkan ini agar ListView dapat berada di dalam SingleChildScrollView
              itemCount: 20,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 10),
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    "Team ${index + 1}",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
