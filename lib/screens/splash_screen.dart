import 'package:church_history/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash_screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //var screenSize = MediaQuery.of(context).size;
    //var screenHeight = screenSize.height;
    //var screenWidth = screenSize.width;

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.purple.shade800,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(HomeScreen.routeName);
                    },
                    icon: const Icon(
                      Icons.church_sharp,
                      color: Color.fromARGB(255, 244, 214, 214),
                      size: 100,
                    ),
                  ),
                ],
              ),
              const Text(
                "Kirche, im Laufe der Zeit",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ],
          )),
    );
  }
}
