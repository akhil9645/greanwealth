import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'package:greenwealth/core/style.dart';
import 'package:greenwealth/view/widgets/widgets.dart';

class NavigationDrawers extends StatefulWidget {
  const NavigationDrawers({super.key});

  @override
  State<NavigationDrawers> createState() => _NavigationDrawersState();
}

class _NavigationDrawersState extends State<NavigationDrawers> {
  @override
  Widget build(BuildContext context) => ZoomDrawer(
      menuBackgroundColor: Colors.white,
      style: DrawerStyle.defaultStyle,
      borderRadius: 40,
      showShadow: true,
      slideWidth: MediaQuery.of(context).size.width * 0.6,
      angle: -12.0,
      drawerShadowsBackgroundColor: backgroundcolor,
      menuScreen: const MenuPage(),
      mainScreen: const MainScreen());
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () => ZoomDrawer.of(context)?.close(),
            icon: const Icon(
              Icons.close,
              color: Colors.grey,
            ),
            color: Colors.grey,
          ),
          title: Image.asset("asset/logo-green 1.png"),
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Spacer(),
            ...MenuItems.all.map(buildMenuItem).toList(),
            const Spacer(
              flex: 2,
            )
          ],
        )),
      ),
    );
  }

  Widget buildMenuItem(MenuItem item) => ListTile(
        minLeadingWidth: 20,
        title: Text(
          item.title!,
          style: TextStyle(color: buttoncolor),
        ),
        onTap: () {},
      );
}

class MenuItems {
  static const home = MenuItem(title: "HOME");
  static const shop = MenuItem(title: "SHOP");
  static const aboutus = MenuItem(title: "ABOUT US");
  static const howtouse = MenuItem(title: "HOW TO USE");
  static const reviews = MenuItem(title: "REVIEWS");
  static const faqs = MenuItem(title: "FAQS");
  static const bewareoffake = MenuItem(title: "BEWARE OF FAKE");
  static const contactus = MenuItem(title: "CONTACT US");
  static const chat = MenuItem(title: "CHAT");
  static const termsofservice = MenuItem(title: "TERMS OF SERVICE");

  static const all = <MenuItem>[
    home,
    shop,
    aboutus,
    howtouse,
    reviews,
    faqs,
    bewareoffake,
    contactus,
    chat,
    termsofservice
  ];
}

class MenuItem {
  final String? title;
  const MenuItem({this.title});
}
