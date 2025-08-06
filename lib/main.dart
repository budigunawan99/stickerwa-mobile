import 'package:StickerWA/static/router.dart';
import 'package:StickerWA/style/theme/stickerwa_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'StickerWA',
      theme: StickerwaTheme.darkTheme,
      routerConfig: MyRouter.routeConfig,
    );
  }
}
