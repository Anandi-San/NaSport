import 'package:flutter/material.dart';

class ContainerTeam extends StatelessWidget {
  final String images;
  final String teamName;
  const ContainerTeam(
      {super.key, required this.images, required this.teamName});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Row(
      children: [
        Image.asset(
        images,
        width: screenWidth * 0.1,
        height: screenHeight * 0.03,
        // width: 20,
        // height: 20,
      ),
      // const SizedBox(),
      Text(
        teamName,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
      ],
      
    );
  }
}
