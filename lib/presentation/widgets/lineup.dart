import 'package:flutter/material.dart';

class LineUpcomponent extends StatelessWidget {
  final String number;
  final String name;

  const LineUpcomponent({
    Key? key,
    required this.number,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 5),
      child: Row(
        children: [
          Text(
            number,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 10), // Jarak antara nomor dan nama
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
