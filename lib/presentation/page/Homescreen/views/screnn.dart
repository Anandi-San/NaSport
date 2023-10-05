// import 'package:flutter/material.dart';
// import 'package:papb_aplication/data/model/standding.dart';
// // import 'package:papb_aplication/data/model/soccermodel.dart';
// // import 'package:papb_aplication/data/model/standding.dart';
// // import 'package:papb_aplication/data/source/api.manager.dart';
// // import 'package:papb_aplication/data/source/standingapi.dart';
// import 'package:papb_aplication/presentation/page/MatchDetail/matchdetail.dart';
// import 'package:papb_aplication/presentation/page/standing/standing.dart';
// import 'package:papb_aplication/presentation/widgets/bottombar.dart';
// // import 'package:papb_aplication/presentation/widgets/component.dart';
// import 'package:papb_aplication/presentation/widgets/listklasnem.dart';

// class Screennnnnn extends StatefulWidget {
//   const Screennnnnn({Key? key}) : super(key: key);
//   @override
//   HomeScreenState createState() => HomeScreenState();
// }

// class HomeScreenState extends State<Screennnnnn> {
//   int _currentIndex = 0;

//   // final SoccerApi soccerApi = SoccerApi();

//   // List<SoccerMatch>? matches;

//   // Future<List<SoccerMatch>> fetchData() async {
//   //   final matchesData = await soccerApi.getAllMatches();
//   //   if (matchesData.isNotEmpty) {
//   //     return matchesData;
//   //   } else {
//   //     return [];
//   //   }
//   // }

//   // final StandingApi standingApi = StandingApi();

//   // Future<List<Standing>> fetchDataStanding() async {
//   //   final standingData = await standingApi.getAllstanding();
//   //   if (standingData.isNotEmpty) {
//   //     return standingData;
//   //   } else {
//   //     return [];
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     double fontSize = screenWidth < 800 ? 30 : 38;
//     double titleFontSize = screenWidth < 800 ? 20 : 28;
//     double subtitleFontSize = screenWidth < 800 ? 16 : 22;

//     return Scaffold(
//       backgroundColor: const Color(0xFFD21312),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding:
//               EdgeInsets.symmetric(horizontal: screenWidth < 1000 ? 10 : 250),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 child: Text(
//                   "NaSport",
//                   style: TextStyle(
//                     fontSize: fontSize,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               Center(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(
//                         10.0), // Membuat container menjadi bulat dengan radius 10
//                   ),
//                   padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: Image.asset(
//                       "assets/image/Epl.png",
//                       width: screenWidth * 1.0,
//                       height: screenHeight * 0.2,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                 ),
//               ),
//               Center(
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 10),
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: "Search Your Match",
//                       filled: true,
//                       fillColor: Colors.white,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide.none,
//                       ),
//                       contentPadding: const EdgeInsets.symmetric(
//                         horizontal: 20,
//                         vertical: 30,
//                       ),
//                       prefixIcon: const Icon(Icons.search, color: Colors.grey),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 160,
//                 width: double.maxFinite,
//                 child: Center(
//                   widthFactor: 200,
//                   child: SizedBox(
//                     child: FutureBuilder(
//                       // future: fetchData(),
//                       builder: (context, snapshot) {
//                         if (snapshot.connectionState ==
//                             ConnectionState.waiting) {
//                           return const Center(
//                             child: CircularProgressIndicator(),
//                           );
//                         } else if (snapshot.hasData &&
//                             snapshot.connectionState == ConnectionState.done) {
//                           // List<SoccerMatch> matches = snapshot.data!;
//                           return ListView.builder(
//                             shrinkWrap: true,
//                             scrollDirection: Axis.horizontal,
//                             itemCount: snapshot.hasData ? 10 : 0,
//                             itemBuilder: (context, index) {
//                               return GestureDetector(
//                                 onTap: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           const MatchDetailPage(),
//                                     ),
//                                   );
//                                 },
//                                 child: Container(
//                                   width: 150,
//                                   height: 150,
//                                   margin: const EdgeInsets.only(
//                                       right: 10, top: 10, bottom: 10),
//                                   decoration: BoxDecoration(
//                                     color: const Color(0xFFF15A59),
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       const Text(
//                                         "Regular Season",
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 16.0,
//                                         ),
//                                       ),
//                                       const SizedBox(height: 10),
//                                       Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         children: [
//                                           // Image.network(
//                                           //   matches[index].home.logoUrl,
//                                           //   width: 45,
//                                           //   height: 45,
//                                           // ),
//                                           const SizedBox(width: 10),
//                                           const Text(
//                                             "VS",
//                                             style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 12,
//                                             ),
//                                           ),
//                                           const SizedBox(width: 10),
//                                           // Image.network(
//                                           //   matches[index].away.logoUrl,
//                                           //   width: 45,
//                                           //   height: 45,
//                                           // ),
//                                         ],
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.only(
//                                             left: 8.0, top: 8.0, right: 8.0),
//                                         child: Row(
//                                           children: [
//                                             // Text(
//                                             //   matches[index].home.name,
//                                             //   style: const TextStyle(
//                                             //     color: Colors.white,
//                                             //     fontSize: 14,
//                                             //   ),
//                                             // ),
//                                             const Spacer(),
//                                             //   Text(
//                                             //     "${matches[index].goal.home ?? 0}",
//                                             //     style: const TextStyle(
//                                             //       color: Colors.white,
//                                             //       fontSize: 14,
//                                             //     ),
//                                             //   ),
//                                           ],
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.only(
//                                             left: 8.0, right: 8.0, top: 5.0),
//                                         child: Row(
//                                           children: [
//                                             // Text(
//                                             //   matches[index].away.name,
//                                             //   style: const TextStyle(
//                                             //     color: Colors.white,
//                                             //     fontSize: 14,
//                                             //   ),
//                                             // ),
//                                             const Spacer(),
//                                             // Text(
//                                             //   "${matches[index].goal.away ?? 0}",
//                                             //   style: const TextStyle(
//                                             //     color: Colors.white,
//                                             //     fontSize: 14,
//                                             //   ),
//                                             // ),
//                                           ],
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               );
//                             },
//                           );
//                         } else {
//                           return Center(
//                             child: Text("Failed Get Data! ${snapshot.error}"),
//                           );
//                         }
//                       },
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const MatchDetailPage(),
//                     ),
//                   );
//                 },
//                 child: Container(
//                   width: 100,
//                   height: 100,
//                   decoration: BoxDecoration(
//                     color: Colors.blue, // Ganti warna sesuai kebutuhan
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Center(
//                     child: Text(
//                       "Detail",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Row(
//                 children: [
//                   Container(
//                     width: 70,
//                     height: 70,
//                     child: Image.asset("assets/flag/england.png"),
//                   ),
//                   const SizedBox(width: 10),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "English Premier League",
//                         style: TextStyle(
//                           fontSize: titleFontSize,
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Text(
//                         "2023/2024",
//                         style: TextStyle(
//                           fontSize: subtitleFontSize,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//               const SizedBox(height: 10),
//               Center(
//                 child: Container(
//                   width: double.maxFinite,
//                   height: 200,
//                   decoration: BoxDecoration(
//                     color: const Color(0xFF070A52),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) =>
//                                 const StandingPage()), // Ganti dengan halaman standing yang sesuai
//                       );
//                     },
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         const ListKlasmen(
//                           mp: "MP",
//                           images: "assets/flag/3.png",
//                           teamName: "Team",
//                           W: "W",
//                           D: "D",
//                           L: "L",
//                           pts: "Pts",
//                         ),
//                         const SizedBox(height: 5),
//                         Expanded(
//                           child: FutureBuilder(
//                             // future: fetchDataStanding(),
//                             builder: (context, snapshot) {
//                               if (snapshot.connectionState ==
//                                   ConnectionState.waiting) {
//                                 return const Center(
//                                   child: CircularProgressIndicator(),
//                                 );
//                               } else if (snapshot.hasData &&
//                                   snapshot.connectionState ==
//                                       ConnectionState.done) {
//                                 // List<Standing> standings = snapshot.data!;
//                                 return ListView.builder(
//                                   // itemCount: standings.length >= 5 ? 5 : standings.length,
//                                   itemBuilder: (context, index) {
//                                     // final standing = standings[index];
//                                     // return ListKlasmen(
//                                     //   mp: "${standing.all.played ?? 0}",
//                                     //   images: standing.team.logo ?? "",
//                                     //   teamName: standing.team.name ?? "",
//                                     //   W: "${standing.all.win ?? 0}",
//                                     //   D: "${standing.all.draw ?? 0}",
//                                     //   L: "${standing.all.lose ?? 0}",
//                                     //   pts: "${standing.points ?? 0}",
//                                     // );
//                                   },
//                                 );
//                               } else if (snapshot.hasError) {
//                                 print("API Error: ${snapshot.error}");
//                                 return Center(
//                                   child: Text(
//                                     "Failed to Get Data! ${snapshot.error}",
//                                     style: const TextStyle(
//                                       color: Colors.red,
//                                     ), // Add error text style
//                                   ),
//                                 );
//                               } else {
//                                 // Handle other states if needed
//                                 return const Center(
//                                   child: Text("No Data Available"),
//                                 );
//                               }
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomBarPage(
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }
