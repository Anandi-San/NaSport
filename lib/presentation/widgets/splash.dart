import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: 290,
                      height: 289,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF15A59),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Positioned(
                      child: Image.asset("assets/image/Odegard.png"),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "NaSport",
                  style: TextStyle(
                      fontSize: 52,
                      color: Color.fromARGB(255, 172, 4, 4),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Football Match Results and Standings Information",
                  style: TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 172, 4, 4),
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
