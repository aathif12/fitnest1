import 'package:fitnest/Pages/Register/Register1.dart';
import 'package:fitnest/Pages/Register/Signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';
import 'package:passwordfield/passwordfield.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

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
            const Text(
              "Hey there,",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 1), // Adds space between the texts
            const Text(
              "Welocme Back",
              style: TextStyle(
                fontFamily: "Poppins-Bold",
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 20), // Adds more space before the text field
            // Firstname TextField

            const SizedBox(height: 20),
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
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                hintText: "Email",
                labelText: "Email",
              ),
            ),
            const SizedBox(height: 20),
            // PasswordField with transparent borders
            PasswordField(
              passwordDecoration: PasswordDecoration(),
              passwordConstraint: r'.*[@$#.*].*',
              border: PasswordBorder(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Colors.transparent), // Transparent border
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Colors.transparent), // Transparent border
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              backgroundColor: Colors.grey[100], // Fill color
            ),
            const SizedBox(height: 10),
            // Checkbox and Text on the same line
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                          fontFamily: "Poppins",
                          decoration: TextDecoration.underline)),
                  child: const Text("Forget Password"),
                ),
              ],
            ),
            const SizedBox(height: 376),
            GradientElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Register1(),
                  ),
                );
              },
              style: GradientElevatedButton.styleFrom(
                minimumSize: const Size(315, 60),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(146, 163, 253, 1),
                    Color.fromRGBO(157, 206, 255, 1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset('lib/assets/or.png'),
            const SizedBox(
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
                const SizedBox(
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
                const Text("Don't  have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Signup()));
                  },
                  style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                          decoration: TextDecoration.underline)),
                  child: const Text("Register"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
