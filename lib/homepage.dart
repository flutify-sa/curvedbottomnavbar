import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Track the index of the selected tab
  int _selectedIndex = 0;

  // List of texts for each tab
  final List<String> _texts = ['Home', 'Settings', 'Smiley Face'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Text(
            _texts[_selectedIndex], // Display the text based on selected index
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurple,
        color: Colors.deepPurple.shade700,
        animationDuration: Duration(milliseconds: 200),
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Update the selected index
          });
        },
        items: [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.settings, color: Colors.white),
          Icon(Icons.face, color: Colors.white),
        ],
      ),
    );
  }
}
