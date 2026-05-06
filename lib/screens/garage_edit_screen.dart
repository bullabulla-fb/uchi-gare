import 'package:flutter/material.dart';

class GarageEditScreen extends StatelessWidget {
  const GarageEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ガレージを作成'),
      ),
      body: CustomPaint(
        painter: _GridPainter(),
        child: const SizedBox.expand(),
      ),
    );
  }
}

class _GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFCCCCCC)
      ..strokeWidth = 1.0
      ..isAntiAlias = false;

    final cellSize = size.width / 18;
    final rows = (size.height / cellSize).ceil();

    for (int i = 0; i <= 18; i++) {
      final x = i * cellSize;
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }
    for (int i = 0; i <= rows; i++) {
      final y = i * cellSize;
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
