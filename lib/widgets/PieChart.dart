import 'dart:math';

import 'package:expenses_app_ui/data.dart';
import 'package:flutter/material.dart';

class PieChart extends StatelessWidget {
  const PieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: customShadow,
          color: primaryColor,
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomPaint(
                foregroundPainter: PieChartPainter(),
                child: Container(),
              ),
            ),
            Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: customShadow,
                  color: primaryColor,
                ),
                child: Center(
                    child: Text(
                  "\$5000",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    var startRadian = -pi / 2;
    double total = 0;

    var paint = new Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;

    expenses.forEach((element) {
      total += element['Amount'];
    });

    for (int i = 0; i < expenses.length; i++) {
      var currentExpense = expenses[i];
      var sweepRadian = (currentExpense['Amount'] / total) * 2 * pi;
      paint.color = pieColors[i];
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startRadian,
        sweepRadian,
        false,
        paint,
      );
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
