import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

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
    return Padding(
      padding: const EdgeInsets.all(12.0), // Overall padding for the screen
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Centers content vertically
        crossAxisAlignment:
            CrossAxisAlignment.start, // Aligns content to the left horizontally
        children: [
          Text(
            "Hey there,",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 10), // Adds space between the texts
          Text(
            "Create an Account",
            style: TextStyle(
              fontFamily: "Poppins-Bold",
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 30), // Adds more space before the text field
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "UserName",
              labelText: "Username",
            ),
          ),
          const SizedBox(
              height:
                  20), // Adds space between the text field and other elements
          // You can add more widgets here (e.g., password field, button)
        ],
      ),
    );
  }
}
