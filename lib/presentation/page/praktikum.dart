import 'package:flutter/material.dart';

class Praktikum extends StatelessWidget {
  const Praktikum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                  Container(
                  height: 400,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        width: double.maxFinite,
                        height: 310,
                        decoration: const BoxDecoration(
                          color:  Color(0xFFF15A59),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        right: 20,
                        top: 100,
                      child: Container(
                        width: 289,
                        height: 289,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 389,
                  height: 289,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
