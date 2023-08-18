import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //logo
        Padding(
          padding: const EdgeInsets.only(left: 260.0, right: 80, top: 80),
          // image from assets folder
          child: Image.asset(
            'lib/images/avocado.jpg',
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            "We deliver groceries at your doorstep",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 24),
        //fresh items everyday
        const Text(
          "Fresh Items Everyday",
          style: TextStyle(color: Colors.brown),
        ),
        const Spacer(),
        //get started button
        GestureDetector(
          //give button like behaviour you can tap without a button,long click, swipe,long press
          onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return const HomePage();
            },
          )),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(11),
            ),
            padding: const EdgeInsets.all(24),
            child: const Text(
              'Get Started',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const Spacer(),
      ],
    ));
  }
}
