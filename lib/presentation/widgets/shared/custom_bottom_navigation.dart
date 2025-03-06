import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation_outlined), label: 'Movies'),
        BottomNavigationBarItem(
            icon: Icon(Icons.book_online_outlined), label: 'Comics'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined), label: 'Characters'),
      ],
    );
  }
}
