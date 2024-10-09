// ignore: file_names
import 'package:fitnest/Pages/OnBoard.dart';
import 'package:flutter/material.dart';

class GotoHome extends StatelessWidget {
  const GotoHome({super.key});

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
      child: Column(
        children: [
          Spacer(), // This will push the content to the center
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 8), // Space between the texts
              Center(
                child: Text(
                  "You are all set now, let’s reach your goals together with us",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
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
                    backgroundColor: WidgetStateProperty.all(Colors.white),
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
  runApp(const GotoHome());
}
