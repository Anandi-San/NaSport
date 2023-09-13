import 'package:flutter/material.dart';

class BottomBarPage extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomBarPage({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80, // Adjust the height as needed
      decoration: BoxDecoration(
        color: Colors.white, // Background color of your custom bottom bar
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildBottomBarItem(Icons.arrow_back, 'Back', 0),
          _buildBottomBarItem(Icons.refresh, 'Refresh', 1),
          _buildBottomBarItem(Icons.home, 'Home', 2),
        ],
      ),
    );
  }

  Widget _buildBottomBarItem(IconData icon, String label, int index) {
    final isSelected = widget.currentIndex == index;
    return GestureDetector(
      onTap: () {
        widget.onTap(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: isSelected ? 36 : 28, // Adjust the icon size as needed
            color: isSelected ? Colors.blue : Colors.grey, // Change the selected/unselected color
          ),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.blue : Colors.grey, // Change the selected/unselected color
              fontSize: 12, // Adjust the font size as needed
            ),
          ),
        ],
      ),
    );
  }
}
