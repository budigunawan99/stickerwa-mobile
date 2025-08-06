import 'package:flutter/material.dart';

class StickerwaAppbar extends StatelessWidget implements PreferredSizeWidget {
  final bool isHomePage;
  final String? title;

  const StickerwaAppbar({super.key, required this.isHomePage, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: titleOptions(title),
      leading: leadingOptions(context),
      actions: [
        isHomePage
            ? IconButton(
              tooltip: "Account",
              onPressed: () {},
              icon: const Padding(
                padding: EdgeInsets.only(right: 10.0, left: 10.0, bottom: 4.0),
                child: Icon(Icons.settings, size: 25),
              ),
            )
            : SizedBox(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  Widget? leadingOptions(context) {
    if (isHomePage) {
      return null;
    } else {
      return Padding(
        padding: const EdgeInsets.only(left: 11.0, right: 11.0),
        child: IconButton(
          tooltip: "Back",
          onPressed: () {
            context.pop();
          },
          icon: Icon(
            Icons.arrow_back,
            size: 20,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      );
    }
  }

  Widget titleOptions(title) {
    if (title == null) {
      return Padding(
        padding: const EdgeInsets.only(top: 2.0),
        child: Image.asset(
          "assets/images/logo_header_green.png",
          width: 150,
          height: 40,
        ),
      );
    } else {
      return Text(title);
    }
  }
}
