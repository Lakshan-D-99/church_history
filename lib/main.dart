import 'package:church_history/screens/all_person_screen.dart';
import 'package:church_history/screens/home_screen.dart';
import 'package:church_history/screens/splash_screen.dart';
import 'package:church_history/widgets/person_detail.dart';
import 'package:church_history/widgets/single_event_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color(0xFF322751),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SingleEventWidget.routeName: (context) => const SingleEventWidget(),
        SplashScreen.routeName: (context) => const SplashScreen(),
        AllPersonScreen.routeName: (context) => const AllPersonScreen(),
        PersonDetail.routeName: (context) => const PersonDetail()
        // PersonScreen.routeName:(context)=> const PersonScreen()
      },
    );
  }
}
