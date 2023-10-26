import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:greenwealth/core/style.dart';
import 'package:greenwealth/view/navigationdrawer/navigationdrawer.dart';
import 'package:greenwealth/view/register/register_screen.dart';
import 'package:greenwealth/view/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarwidget("Login"),
      body: Column(
        children: <Widget>[
          Stack(
            children: [
              Image.asset(
                "asset/leaf bottle 5.png",
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.9,
              ),
              Positioned(
                top: 225,
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.05,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: const Border.fromBorderSide(
                        BorderSide(color: Colors.green, width: 0.5),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10, top: 25),
                      child: Text(
                        "Email",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 325,
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.05,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: const Border.fromBorderSide(
                        BorderSide(color: Colors.green, width: 0.5),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10, top: 25),
                      child: Text(
                        "Password",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Text(
              "Forgot Password?  ",
              style: TextStyle(color: Colors.green),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child:
                    button(context, 12, "Sign In", const NavigationDrawers()),
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                const TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(color: Colors.green, fontSize: 14)),
                TextSpan(
                  text: 'Register',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ));
                    },
                ),
              ],
            ),
          ),
          kheight
        ],
      ),
    );
  }
}
