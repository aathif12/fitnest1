// ignore: file_names
import 'package:fitnest/Pages/OnBoard2.dart';
import 'package:flutter/material.dart';

class OneBoard extends StatelessWidget {
  const OneBoard({super.key});

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
                      'lib/assets/FrameFemale.png',
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
                    "Track Your Goal",
                    textAlign: TextAlign.start, // Center the heading text
                    style: TextStyle(
                      color: Color(0xff1d1517),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
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
                  builder: (context) => const OneBoard2(),
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
  runApp(const OneBoard());
}
