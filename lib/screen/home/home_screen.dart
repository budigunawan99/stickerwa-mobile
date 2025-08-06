import 'package:StickerWA/style/colors/stickerwa_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Image.asset(
                  "assets/images/logo_header_green.png",
                  width: 150,
                  height: 40,
                ),
              ),
              actions: [
                IconButton(
                  tooltip: "Akun",
                  onPressed: () {},
                  icon: const Padding(
                    padding: EdgeInsets.only(
                      right: 10.0,
                      left: 10.0,
                      bottom: 4.0,
                    ),
                    child: Icon(Icons.settings, size: 25),
                  ),
                ),
              ],
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Text(
                    "My Stickers",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                background: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        StickerwaColors.darkGreen.color,
                        StickerwaColors.boldGreen.color,
                        StickerwaColors.lightGreen.color,
                      ],
                      tileMode: TileMode.mirror,
                    ),
                  ),
                  child: Image.asset(
                    "assets/images/stickerwa_green.png",                  
                    alignment: Alignment.topRight,
                    fit: BoxFit.contain,
                    opacity: const AlwaysStoppedAnimation(0.25),
                  ),
                ),
              ),
            ),
            SliverList.builder(
              itemCount: 1000,
              itemBuilder: (context, index) {
                return ListTile(title: Text("Index $index"));
              },
            ),
          ],
        ),
      ),
    );
  }
}
