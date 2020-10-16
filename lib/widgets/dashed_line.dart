import 'package:flutter/material.dart';
class DBDashedLine extends StatelessWidget {
  final Axis axis;
  final int count;
  final double dashedLineWidth;
  final double dashedLineHeight;
  final Color color;

  DBDashedLine(
      {this.axis = Axis.horizontal,
        this.count = 10,
        this.dashedLineWidth = 8,
        this.dashedLineHeight = 5,
        this.color = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Flex(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      direction: axis,
      children: _buildDashedLine(),
    );
  }

  List<Widget> _buildDashedLine() {
    return List.generate(
        count,
            (_) => SizedBox(
          width: dashedLineWidth,
          height: dashedLineHeight,
          child: DecoratedBox(decoration: BoxDecoration(color: color)),
        ));
  }
}