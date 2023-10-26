import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:greenwealth/core/style.dart';
import 'package:greenwealth/view/navigationdrawer/navigationdrawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Image.asset("asset/logo-green 1.png"),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
              ZoomDrawer.of(context)?.toggle();
            },
            icon: Icon(
              Icons.menu,
              color: buttoncolor,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: buttoncolor,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            kheight,
            Container(
              width: width,
              height: height / 4,
              color: Colors.grey,
              child: Image.asset(
                "asset/Rectangle 19.png",
                fit: BoxFit.cover,
              ),
            ),
            kheight,
            Text(
              "GREEN WEALTH NEO HAIR LOTION",
              style: TextStyle(color: buttoncolor),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  "Hair Root Nutrients made by the Ancient Home Remedy Techniques and from teh Deep forests of Thailand. Green Wealth brand offers Neo Hair Lotion, which is a Result"),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(buttoncolor)),
                onPressed: () {},
                child: const Text(
                  "SHOP NOW",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "ULTIMATE HAIR CARE AT AFFORDABLE PRICE!",
                style: TextStyle(color: buttoncolor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: SizedBox(
                width: width,
                height: height / 1.7,
                child: Image.asset(
                  "asset/wondering 1.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: SizedBox(
                width: width,
                height: height / 1.7,
                child: Image.asset(
                  "asset/saw-palmetto-1 1.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              width: width,
              height: height / 4.5,
              child: Image.asset(
                "asset/bottle 1.png",
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "INGREDIENTS DRAWN FROM THE LAND OF ORGANICS!",
                style: TextStyle(color: buttoncolor),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Green Wealth Neo Hair Lotion Uses the Ancient Home Remedies for Hair Treatment Along with Modern Science. Purely made of all Natural Ingredients Herbal Techniques Using eh Base of Cucumis Melo Extract & More Which Are Extremely Helpful for Hair.",
              ),
            ),
            kheight,
            CircleAvatar(
              backgroundColor: buttoncolor,
              radius: 30,
              child: const Icon(
                Icons.fire_truck,
                color: Colors.white,
                size: 30,
              ),
            ),
            Text(
              "Free Shipping",
              style: TextStyle(color: buttoncolor),
            ),
            kheight,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(32),
                      border: Border.fromBorderSide(
                          BorderSide(width: 2, color: buttoncolor))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "UAE",
                      style: TextStyle(
                          color: buttoncolor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(32),
                      border: Border.fromBorderSide(
                          BorderSide(width: 2, color: buttoncolor))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "OMAN",
                      style: TextStyle(
                          color: buttoncolor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(32),
                      border: Border.fromBorderSide(
                          BorderSide(width: 2, color: buttoncolor))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "BAHRAIN",
                      style: TextStyle(
                          color: buttoncolor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                ),
              ],
            ),
            kheight,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(32),
                      border: Border.fromBorderSide(
                          BorderSide(width: 2, color: buttoncolor))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "QATAR",
                      style: TextStyle(
                          color: buttoncolor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(32),
                      border: Border.fromBorderSide(
                          BorderSide(width: 2, color: buttoncolor))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "KUWAIT",
                      style: TextStyle(
                          color: buttoncolor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(32),
                      border: Border.fromBorderSide(
                          BorderSide(width: 2, color: buttoncolor))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "KSA",
                      style: TextStyle(
                          color: buttoncolor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                ),
              ],
            ),
            kheight,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(32),
                      border: Border.fromBorderSide(
                          BorderSide(width: 2, color: buttoncolor))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "INDIA",
                      style: TextStyle(
                          color: buttoncolor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(32),
                      border: Border.fromBorderSide(
                          BorderSide(width: 2, color: buttoncolor))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "PAKISTAN",
                      style: TextStyle(
                          color: buttoncolor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                ),
              ],
            ),
            kheight,
            const Divider(
              thickness: 4,
            ),
            kheight,
            Text(
              "Pay Using",
              style: TextStyle(color: buttoncolor),
            ),
            kheight,
            SizedBox(
              width: width,
              child: Image.asset("asset/Group 21.png"),
            ),
            kheight,
            Text(
              "100% Secure Payment",
              style: TextStyle(color: buttoncolor),
            ),
            kheight,
            Icon(
              Icons.payment_rounded,
              color: buttoncolor,
              size: 55,
            ),
            kheight,
          ],
        ),
      ),
    );
  }
}
