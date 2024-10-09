import 'package:fitnest/Pages/Intro2nd.dart';
import 'package:fitnest/Pages/Register/Register1.dart';
import 'package:fitnest/Pages/Register/Signin.dart';
import 'package:flutter/material.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';
import 'package:passwordfield/passwordfield.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
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
            SizedBox(height: 20), // Adds more space before the text field
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
            SizedBox(height: 20),
            // Checkbox and Text on the same line
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: false,
                  onChanged: (bool? newValue) {
                    // Handle checkbox state change
                  },
                ),
                Expanded(
                  child: Text(
                    "By continuing you accept our Privacy Policy and Term of Use",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 250),
            GradientElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Register1(),
                  ),
                );
              },
              style: GradientElevatedButton.styleFrom(
                minimumSize: Size(315, 60),
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
                "Register",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('lib/assets/or.png'),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Image.asset("lib/assets/Google.png"),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Image.asset("lib/assets/facebook.png"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signin()));
                  },
                  child: Text("Login"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
