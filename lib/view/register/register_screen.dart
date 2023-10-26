import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:greenwealth/core/style.dart';
import 'package:greenwealth/view/home/homescreen.dart';
import 'package:greenwealth/view/login/login_screen.dart';
import 'package:greenwealth/view/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailcontroller = TextEditingController();
    final TextEditingController passwordcontroller = TextEditingController();
    final TextEditingController confirmpasswordcontroller =
        TextEditingController();
    final TextEditingController firstnamecontroller = TextEditingController();
    final TextEditingController lastnamecontroller = TextEditingController();
    final TextEditingController companynamecontroller = TextEditingController();
    final TextEditingController phonenumbercontroller = TextEditingController();
    final TextEditingController addressline1controller =
        TextEditingController();
    final TextEditingController addressline2controller =
        TextEditingController();
    final TextEditingController citycontroller = TextEditingController();
    final TextEditingController countrycontroller = TextEditingController();
    final TextEditingController statecontroller = TextEditingController();
    final TextEditingController pincodecontroller = TextEditingController();
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: appbarwidget("New Account"),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextFoarm(
                  controller: emailcontroller,
                  hintText: "",
                  hide: false,
                  titleOfTextfoarm: "Email Address"),
              kheight,
              TextFoarm(
                  controller: passwordcontroller,
                  hintText: "",
                  hide: false,
                  titleOfTextfoarm: "Password"),
              kheight,
              TextFoarm(
                  controller: confirmpasswordcontroller,
                  hintText: "",
                  hide: false,
                  titleOfTextfoarm: "Confirm Password"),
              kheight,
              TextFoarm(
                  controller: firstnamecontroller,
                  hintText: "",
                  hide: false,
                  titleOfTextfoarm: "First Name"),
              kheight,
              TextFoarm(
                  controller: lastnamecontroller,
                  hintText: "",
                  hide: false,
                  titleOfTextfoarm: "Last Name"),
              kheight,
              TextFoarm(
                  controller: companynamecontroller,
                  hintText: "",
                  hide: false,
                  titleOfTextfoarm: "Company Name"),
              kheight,
              TextFoarm(
                  controller: phonenumbercontroller,
                  hintText: "",
                  hide: false,
                  titleOfTextfoarm: "Phone Number"),
              kheight,
              TextFoarm(
                  controller: addressline1controller,
                  hintText: "",
                  hide: false,
                  titleOfTextfoarm: "Address Line 1"),
              kheight,
              TextFoarm(
                  controller: addressline2controller,
                  hintText: "",
                  hide: false,
                  titleOfTextfoarm: "Address Line 2"),
              kheight,
              TextFoarm(
                  controller: citycontroller,
                  hintText: "",
                  hide: false,
                  titleOfTextfoarm: "Suburb/City"),
              kheight,
              TextFoarm(
                  controller: countrycontroller,
                  hintText: "",
                  hide: false,
                  titleOfTextfoarm: "Country"),
              kheight,
              TextFoarm(
                  controller: statecontroller,
                  hintText: "",
                  hide: false,
                  titleOfTextfoarm: "State/Province"),
              kheight,
              TextFoarm(
                  controller: pincodecontroller,
                  hintText: "",
                  hide: false,
                  titleOfTextfoarm: "Zip/Postcode"),
              Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: button(context, 45, "CREATE ACCOUNT", HomeScreen())),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    const TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(color: Colors.black, fontSize: 14)),
                    TextSpan(
                        text: 'Login',
                        style: const TextStyle(
                          color: Colors.green,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
