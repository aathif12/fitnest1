import 'package:fitnest/Pages/Register/Signin.dart';
import 'package:flutter/material.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';

final List<String> gender = ["Male", "Female"];

class Register1 extends StatefulWidget {
  const Register1({super.key});

  @override
  _Register1State createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  String _selectedValue = "Male"; // Corrected typo and moved into state

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("lib/assets/Gym.png"),
          SizedBox(
            height: 20,
          ),
          Text(
            "Let’s complete your profile",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Text(
            "It will help us to know more about you!",
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 20,
          ),
          DropdownButtonFormField<String>(
            value: _selectedValue,
            items: gender
                .map((e) => DropdownMenuItem(child: Text(e), value: e))
                .toList(),
            onChanged: (val) {
              setState(() {
                _selectedValue = val!;
              });
            },
          ),
          SizedBox(height: 250),
          GradientElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Signin(),
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
        ],
      ),
    );
  }
}
