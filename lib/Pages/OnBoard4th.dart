// ignore: file_names
import 'package:fitnest/Pages/Register/Signup.dart';
import 'package:flutter/material.dart';

class OnBoard4th extends StatelessWidget {
  const OnBoard4th({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: buildOnboarding(context),
      ),
    );
  }

  Widget buildOnboarding(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.57, // 57% of the screen height
              width: double.infinity,
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      'lib/assets/FrameYoga.png',
                      height: MediaQuery.of(context).size.height *
                          0.57, // Set the image height
                      width: double
                          .infinity, // Stretch the image to the full width
                      fit: BoxFit
                          .cover, // Ensure the image covers the available space
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0), // Add horizontal padding for better layout
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Improve Sleep  Quality",
                    textAlign: TextAlign.center, // Center the heading text
                    style: TextStyle(
                      color: Color(0xff1d1517),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
                    textAlign: TextAlign
                        .justify, // Justify the body text for better alignment
                    style: TextStyle(
                      color: Color(0xff7b6f72),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
              width: 100,
            ),
            const Spacer(),
          ],
        ),
        Positioned(
          bottom: 30, // Adjust the distance from the bottom
          right: 30, // Adjust the distance from the right
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Signin(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(20),
              backgroundColor: const Color(0xFF92A3FD),
              side: const BorderSide(width: 3.0, color: Colors.white),
            ),
            child: const Icon(
              Icons.keyboard_arrow_right_rounded,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(const OnBoard4th());
}
