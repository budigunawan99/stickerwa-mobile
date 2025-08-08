import 'package:StickerWA/provider/auth/auth_provider.dart';
import 'package:StickerWA/screen/home/home_screen.dart';
import 'package:StickerWA/screen/login/login_screen.dart';
import 'package:StickerWA/screen/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class MyRouter {
  static GoRouter get routeConfig {
    return GoRouter(
      initialLocation: '/splash',
      redirect: (context, state) {
        if (state.uri.toString() == "/splash") {
          return null;
        }

        final bool isAuthenticated = context.read<AuthProvider>().isLogin;

        if (!isAuthenticated) {
          return "/login";
        }

        if (state.uri.toString() == "/login" ||
            state.uri.toString() == "/register") {
          return "/home";
        }

        return null;
      },
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
