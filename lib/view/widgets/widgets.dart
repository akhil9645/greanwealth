import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:greenwealth/core/style.dart';
import 'package:greenwealth/view/home/homescreen.dart';
import 'package:greenwealth/view/profile/profile.dart';

appbarwidget(String title) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title,
      style: TextStyle(
          color: titlecolor, fontSize: 25, fontWeight: FontWeight.bold),
    ),
  );
}

// ignore: must_be_immutable
class TextFoarm extends StatelessWidget {
  final String hintText;
  final String titleOfTextfoarm;
  final TextEditingController controller;
  int? maxlines;
  int? maxlength;
  bool hide = true;
  TextInputType? type;

  TextFoarm(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.hide,
      this.maxlines,
      this.maxlength,
      this.type,
      required this.titleOfTextfoarm});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleOfTextfoarm,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        TextFormField(
          obscureText: hide,
          autofocus: false,
          cursorColor: Colors.black,
          controller: controller,
          maxLines: 1,
          keyboardType: type,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white70,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.green, width: 0.1)),
            hintText: hintText,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          ),
        )
      ],
    );
  }
}

button(BuildContext context, double radius, String title, Widget screen) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: 60,
    child: ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius))),
          backgroundColor: MaterialStatePropertyAll(buttoncolor)),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => screen,
        ));
      },
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    ),
  );
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late CircularBottomNavigationController navigationController;
  int currentScreen = 0;
  var screens = const [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    Profile(),
    HomeScreen(),
  ];
  @override
  void initState() {
    super.initState();
    navigationController = CircularBottomNavigationController(currentScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[currentScreen],
      bottomNavigationBar: CircularBottomNavigation(
        tabItems,
        selectedPos: currentScreen,
        controller: navigationController,
        selectedCallback: (int? selectedPos) {
          setState(() {
            currentScreen = selectedPos!;
          });
        },
      ),
    );
  }
}

List<TabItem> tabItems = [
  TabItem(Icons.home, "Home", buttoncolor),
  TabItem(Icons.shopping_bag_outlined, "Shop", buttoncolor),
  TabItem(Icons.favorite_border_outlined, "Wishlist", buttoncolor),
  TabItem(Icons.account_circle_outlined, "Profile", buttoncolor),
  TabItem(Icons.group, "Group", buttoncolor),
];
