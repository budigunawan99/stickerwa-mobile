import 'package:StickerWA/data/local/auth_repository.dart';
import 'package:StickerWA/provider/auth/auth_provider.dart';
import 'package:StickerWA/static/router.dart';
import 'package:StickerWA/style/theme/stickerwa_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();

  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => AuthRepository(prefs)),
        ChangeNotifierProvider(
          create: (context) => AuthProvider(context.read<AuthRepository>()),
        ),
      ],
      child: const MyApp(),
    ),
  );
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
