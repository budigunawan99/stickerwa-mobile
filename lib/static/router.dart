import 'package:StickerWA/screen/home/home_screen.dart';
import 'package:StickerWA/screen/login/login_screen.dart';
import 'package:StickerWA/screen/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

class MyRouter {
  static GoRouter get routeConfig {
    return GoRouter(
      initialLocation: '/home',
      routes: [
        GoRoute(
          name: 'splash',
          path: '/splash',
          builder: (context, state) => SplashScreen(),
        ),
        GoRoute(
          name: 'login',
          path: '/login',
          builder: (context, state) => LoginScreen(),
        ),
        GoRoute(
          name: 'home',
          path: '/home',
          builder: (context, state) => HomeScreen(),
        ),
      ],
    );
  }
}
