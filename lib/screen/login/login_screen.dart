import 'package:StickerWA/utils/wave_clipper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipPath(
              clipper: WaveClipper(),
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Image.asset(
                  'assets/images/hero.png',
                  fit: BoxFit.cover,
                  opacity: const AlwaysStoppedAnimation(0.85),
                ),
              ),
            ),
            Image.asset(
              "assets/images/logo_header_green.png",
              width: 250,
              height: 140,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Text(
                "Create a sticker from the available template here and custom the text",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: ElevatedButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  minimumSize: Size(double.infinity, 40),
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 10,
                    bottom: 10,
                  ),
                  backgroundColor:
                      Theme.of(context).colorScheme.surfaceContainer,
                  shape: const StadiumBorder(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/google_icon.png",
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox.square(dimension: 10),
                    Flexible(
                      child: Text(
                        'Sign In with Google',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
