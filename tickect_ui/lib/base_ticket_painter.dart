import 'package:flutter/material.dart';

class TicketPainter extends CustomPainter {
  final Color borderColor;
  final Color bgColor;

  TicketPainter({
    required this.bgColor,
    required this.borderColor,
  });

  // void paint(Canvas canvas, Size size) {
  //   var center = size / 2;
  //   var paint = Paint()..color = Colors.yellow;

  //   canvas.drawArc(
  //     Rect.fromCenter(
  //       center: Offset(center.width, center.height),
  //       width: 50,
  //       height: 50,
  //     ),
  //     0.4,
  //     2 * 3.14 - 0.8,
  //     true,
  //     paint,
  //   );
  // }

  // @override
  void paint(Canvas canvas, Size size) {
    final maxWidth = size.width;
    final maxHeight = size.height;

    final paintBg = Paint()
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..color = bgColor;

    final paintBorder = Paint()
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..color = borderColor;

    final paintDottedLine = Paint()
      ..color = borderColor.withOpacity(0.5)
      ..strokeWidth = 1.2;

    var path = Path();
  }

  // Since this Sky painter has no fields, it always paints
  // the same thing and semantics information is the same.
  // Therefore we return false here. If we had fields (set
  // from the constructor) then we would return true if any
  // of them differed from the same fields on the oldDelegate.
  @override
  bool shouldRepaint(TicketPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(TicketPainter oldDelegate) => false;
}
