import 'package:fitnest/Pages/Intro2nd.dart';
import 'package:flutter/material.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: welcomeScreen(context),
      ),
    );
  }

  Column welcomeScreen(BuildContext context) {
    return Column(
      children: [
        Spacer(), // This will push the content to the center
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "FitnestX",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 8), // Space between the texts
            Text(
              "Everybody Can Train",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Spacer(), // This will push the content to the center
        Padding(
          padding: const EdgeInsets.only(
              bottom: 20.0), // Optional padding to add some space at the bottom
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 315,
              height: 60,
              child: GradientElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Intro2nd(),
                    ),
                  );
                },
                style: GradientElevatedButton.styleFrom(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(146, 163, 253, 1),
                      Color.fromRGBO(157, 206, 255, 1),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(const Intro());
}
