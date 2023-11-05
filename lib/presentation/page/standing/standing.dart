import 'package:flutter/material.dart';
import 'package:papb_aplication/presentation/page/Homescreen/views/homescreen.dart';
import 'package:papb_aplication/presentation/widgets/listklasnem.dart';
import 'package:papb_aplication/data/model/klasmenttest/fixtures.dart';

class StandingPage extends StatelessWidget {
  // final SoccerMatch soccerMatch;
  final List<Standing> fixtures;
  const StandingPage({Key? key, required this.fixtures}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print("fixtures: $fixtures");
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
            SizedBox(
              width: double.infinity,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Gambar
                    Image.asset(
                      'assets/flag/england.png',
                      width: 50, // Atur lebar sesuai kebutuhan Anda
                      height: 50, // Atur tinggi sesuai kebutuhan Anda
                    ),
                    const SizedBox(width: 10), // Jarak antara gambar dan teks
                    // Teks
                    const Text(
                      'England',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors
                            .white, // Atur ukuran font sesuai kebutuhan Anda
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
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
            const Center(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Mengatur konten ke kiri
                children: [
                  ListKlasmen(
                    images: null,
                    teamName: "Team",
                    mp: "MP",
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
              width: double.infinity,
              height: 1,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: fixtures.length,
              itemBuilder: (context, index) {
                final Standing standing = fixtures[index];
                final String teamName = standing.team?.name ?? "Unknown Team";
                final String teamLogo = standing.team?.logo ?? "";
                final int mp = standing.all?.played ?? 0;
                final int w = standing.all?.win ?? 0;
                final int d = standing.all?.draw ?? 0;
                final int l = standing.all?.lose ?? 0;
                final int pts = standing.points ?? 0;
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 3.0, horizontal: 10),
                  // padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF070A52),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
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
            )
          ],
        ),
      ),
    );
  }
}
