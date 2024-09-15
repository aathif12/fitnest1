// ignore: file_names
import 'package:flutter/material.dart';

class OneBoard2 extends StatelessWidget {
  const OneBoard2({super.key});

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
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              child: Stack(
                children: [
                  CustomPaint(
                    painter: CustomShapePainter(),
                    size: Size.infinite, // Fills the available space
                  ),
                  Center(
                    child: Image.asset(
                      'lib/assets/runner.png',
                      height: 350,
                      width: 200,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  textAlign: TextAlign.start,
                  "Get Burn",
                  style: TextStyle(
                    color: Color(0xff1d1517),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  " Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xff7b6f72),
                    fontSize: 16,
                  ),
                ),
              ],
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
          right: 30, // Adjust the distance from the left
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OneBoard2(),
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

class CustomShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = const LinearGradient(
        colors: [Color(0xFF9DCEFF), Color(0xFF92A3FD)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromLTRB(0, 0, size.width, size.height));

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height * 0.7)
      ..quadraticBezierTo(size.width * 0.4, size.height * 0.3, size.width * 0.4,
          size.height * 0.4)
      ..quadraticBezierTo(
          size.width * 0.85, size.height * 0.6, size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

void main() {
  runApp(const OneBoard2());
}
