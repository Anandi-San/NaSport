import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Menentukan ukuran font berdasarkan lebar layar
    double titleFontSize = screenWidth < 400 ? 40 : 52;
    double subtitleFontSize = screenWidth < 400 ? 16 : 22;

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
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 800, // Adjust the maximum width as needed
                        maxHeight: double.infinity,
                      ),
                      child: Container(
                        width: screenWidth * 0.8,
                        height: screenHeight * 0.4,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF15A59),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      child: Image.asset(
                        "assets/image/Odegard.png",
                        width: screenWidth * 2.0,
                        height: screenHeight * 0.4,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  "NaSport",
                  style: TextStyle(
                    fontSize: titleFontSize,
                    color: const Color.fromARGB(255, 172, 4, 4),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Football Match Results and Standings Information",
                  style: TextStyle(
                    fontSize: subtitleFontSize,
                    color: const Color.fromARGB(255, 172, 4, 4),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                // Text(
                //   "Screen Width: $screenWidth, Screen Height: $screenHeight",
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
