import 'package:flutter/material.dart';
import 'package:myapp/screen/home/home_screen.dart';
import 'package:myapp/static/navigation_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StickerWA',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: NavigationRoute.homeRoute.name,
      routes: {NavigationRoute.homeRoute.name: (context) => const HomeScreen()},
    );
  }
}
