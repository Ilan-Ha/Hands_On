import 'package:flutter/material.dart';
import 'package:hands_on/paginas/homepage.dart';
import 'package:hands_on/paginas/second_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Naviggation and stateful",
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => const HomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}
