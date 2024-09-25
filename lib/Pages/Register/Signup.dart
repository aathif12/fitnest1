import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: buildOnboarding(context),
      ),
    );
  }

  Widget buildOnboarding(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(30.0), // Overall padding for the screen
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.start, // Centers content vertically
          crossAxisAlignment: CrossAxisAlignment
              .center, // Aligns content to the center horizontally
          children: [
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
            // Firstname TextField
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey[100],
                isDense: true,
                filled: true,
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: SizedBox(
                    width: 20.0,
                    height: 20.0,
                    child: Image.asset(
                      'lib/assets/Profile.png',
                    ),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                hintText: "Firstname",
                labelText: "Firstname",
              ),
            ),
            SizedBox(height: 20),
            // Lastname TextField
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey[100],
                isDense: true,
                filled: true,
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: SizedBox(
                    width: 20.0,
                    height: 20.0,
                    child: Image.asset(
                      'lib/assets/Profile.png',
                    ),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                hintText: "Lastname",
                labelText: "Lastname",
              ),
            ),
            SizedBox(height: 20),
            // Email TextField
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey[100],
                isDense: true,
                filled: true,
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: SizedBox(
                    width: 20.0,
                    height: 20.0,
                    child: Image.asset(
                      'lib/assets/Message.png',
                    ),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                hintText: "Email",
                labelText: "Email",
              ),
            ),
            SizedBox(height: 20),
            // PasswordField with transparent borders
            PasswordField(
              passwordDecoration: PasswordDecoration(),
              passwordConstraint: r'.*[@$#.*].*',

              border: PasswordBorder(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent), // Transparent border
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent), // Transparent border
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              backgroundColor: Colors.grey[100], // Fill color
            ),
          ],
        ),
      ),
    );
  }
}
