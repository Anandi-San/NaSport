import 'package:flutter/material.dart';

class ContainerNumber extends StatelessWidget {
  final String number;
  const ContainerNumber({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 17,
      width: 25,
      child: Center(
        child: Text(
          number,
          style: const TextStyle(
          fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
