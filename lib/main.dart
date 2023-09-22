import 'package:flutter/material.dart';
import 'package:papb_aplication/presentation/page/Homescreen/views/homescreen.dart'; // Ganti dengan path yang sesuai
import 'package:papb_aplication/presentation/widgets/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home:
          SplashScreenBuilder(), // Menggunakan SplashScreenBuilder sebagai halaman awal
    );
  }
}

class SplashScreenBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 5)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SplashScreen();
        } else {
          return const HomeScreen(); // Halaman utama setelah SplashScreen
        }
      },
    );
    
  }
}
