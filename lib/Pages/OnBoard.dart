import 'package:flutter/material.dart';

class OneBoard extends StatelessWidget {
  const OneBoard({super.key});

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          child: CustomPaint(
            painter: CustomShapePainter(),
          ),
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              "Track Your Goal",
              style: TextStyle(
                color: Color(0xff1d1517),
                fontSize: 24,
                fontWeight: FontWeight.w700,
                height: 1.5,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Don't Worry",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff7b6f72),
                fontSize: 16,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 100,
          width: 100,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(20),
            backgroundColor: Color(0xFF92A3FD),
          ),
          child: const Icon(
            Icons.keyboard_arrow_right_rounded,
            size: 30,
            color: Colors.white,
          ),
        ),
        const Spacer(),
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
      ..quadraticBezierTo(size.width * 0.25, size.height * 0.9,
          size.width * 0.5, size.height * 0.8)
      ..quadraticBezierTo(
          size.width * 0.75, size.height * 0.7, size.width, size.height)
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
  runApp(const OneBoard());
}
