import 'package:fitnest/Pages/OnBoard4th.dart';
import 'package:fitnest/Pages/Register/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';
import 'package:passwordfield/passwordfield.dart';

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
          ElevatedButton(
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
        ],
      ),
    );
  }
}
