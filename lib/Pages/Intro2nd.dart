// ignore: file_names
import 'package:fitnest/Pages/OnBoard.dart';
import 'package:flutter/material.dart';

class Intro2nd extends StatelessWidget {
  const Intro2nd({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: welcomeScreenDark(context),
      ),
    );
  }

  Container welcomeScreenDark(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff92a3fd), Color(0xff9dceff)],
        ),
      ),
      child: Column(
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
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
          Spacer(), // This will push the content to the center
          Padding(
            padding: const EdgeInsets.only(
              bottom: 20.0,
            ), // Optional padding to add some space at the bottom
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 315,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OneBoard(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff93a3fd),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const Intro2nd());
}
