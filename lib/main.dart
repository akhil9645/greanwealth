import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenwealth/view/register/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: const RegisterScreen(),
    );
  }
}
