import 'package:flutter/material.dart';

/// A single square on the chessboard
class BoardSquare extends StatelessWidget {
  /// The square name (a2, d3, e4, etc.)
  final squareName;

  BoardSquare({this.squareName});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: _getImageToDisplay(size: 60),
    );
  }

  /// Get image to display on square
  Widget _getImageToDisplay({double size}) {
    return Container(
      width: size,
      height: size,
      child: Image.asset(
        "images/plate/rook_b.gif",
        fit: BoxFit.contain,
      ),
    );
  }
}
