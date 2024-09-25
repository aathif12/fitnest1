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
      padding: const EdgeInsets.all(30.0), // Overall padding for the screen
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.start, // Centers content vertically
        crossAxisAlignment: CrossAxisAlignment
            .center, // Aligns content to the left horizontally
        children: const [
          Text(
            "Hey there,",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 18,
            ),
          ),
          SizedBox(height: 1), // Adds space between the texts
          Text(
            "Create an Account",
            style: TextStyle(
              fontFamily: "Poppins-Bold",
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 10), // Adds more space before the text field
          TextField(
            decoration: InputDecoration(
              fillColor: Colors.white10,
              filled: true,
              prefixIcon: Icon(Icons.supervised_user_circle_sharp),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent)),
              hintText: "UserName",
              labelText: "Username",
            ),
          ),
          SizedBox(
              height:
                  20), // Adds space between the text field and other elements
          // You can add more widgets here (e.g., password field, button)
        ],
      ),
    );
  }
}
