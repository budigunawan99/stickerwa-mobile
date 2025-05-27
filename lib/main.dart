import 'package:StickerWA/screen/home/home_screen.dart';
import 'package:StickerWA/static/navigation_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
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
