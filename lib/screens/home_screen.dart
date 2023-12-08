import 'package:church_history/screens/all_person_screen.dart';
import 'package:church_history/screens/all_posts_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "Kirchen Geschichte im Laufe der Zeit",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: _index == 0 ? const AllPostsScreen() : const AllPersonScreen(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.feed),
                label: "Wichtige Ereignisse",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: "Wichtige Personen",
                backgroundColor: Colors.black),
          ],
          currentIndex: _index,
          onTap: (value) {
            _index = value;
            setState(() {});
          },
        ),
      ),
    );
  }
}
