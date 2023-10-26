import 'package:flutter/material.dart';
import 'package:greenwealth/core/style.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Image.asset("asset/logo-green 1.png"),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {},
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
              ),
            ),
          )
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(25),
            child: Divider(
              thickness: 2,
              color: Colors.grey.shade300,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                const Icon(
                  Icons.assignment_outlined,
                  color: Colors.grey,
                  size: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: Text(
                    "Orders",
                    style: TextStyle(color: buttoncolor, fontSize: 20),
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.keyboard_arrow_up_rounded,
                  color: buttoncolor,
                  size: 30,
                ),
              ],
            ),
            kheight,
            Container(
              width: width,
              height: height * 0.33,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Image.asset(
                      'asset/DRS__65157 1.png',
                      width: 180,
                      height: 180,
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order #20842',
                          style: TextStyle(
                            color: buttoncolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const Text(
                          'Ghori Derma Roller\nSystem',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Order Placed',
                          style: TextStyle(
                            color: buttoncolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const Text(
                          '21 Jun 2023',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Last Update',
                          style: TextStyle(
                            color: buttoncolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const Text(
                          '23 Jun 2023',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        kheight,
                        SizedBox(
                          width: width * 0.4,
                          height: 60,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(34))),
                                backgroundColor:
                                    MaterialStatePropertyAll(buttoncolor)),
                            onPressed: () {},
                            child: const Text(
                              "View All Orders",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.grey.shade200,
            ),
            kheight,
            Row(
              children: <Widget>[
                const Icon(
                  Icons.contact_page_outlined,
                  color: Colors.grey,
                  size: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: Text(
                    "Address",
                    style: TextStyle(color: buttoncolor, fontSize: 20),
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: buttoncolor,
                  size: 30,
                ),
              ],
            ),
            kheight,
            kheight,
            Row(
              children: <Widget>[
                const Icon(
                  Icons.radio_button_checked_outlined,
                  color: Colors.grey,
                  size: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: Text(
                    "Recently Viewed",
                    style: TextStyle(color: buttoncolor, fontSize: 20),
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: buttoncolor,
                  size: 30,
                ),
              ],
            ),
            kheight,
            kheight,
            Row(
              children: <Widget>[
                const Icon(
                  Icons.app_settings_alt,
                  color: Colors.grey,
                  size: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: Text(
                    "Account Settings",
                    style: TextStyle(color: buttoncolor, fontSize: 20),
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: buttoncolor,
                  size: 30,
                ),
              ],
            ),
            kheight,
          ],
        ),
      ),
    );
  }
}
