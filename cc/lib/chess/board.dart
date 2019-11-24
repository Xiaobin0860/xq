import 'package:flutter/material.dart';

class Board extends StatefulWidget {
  Board({Key key, this.size}) : super(key: key);

  /// Size of chessboard
  final double size;

  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Container(
        //   height: widget.size,
        //   width: widget.size,
        //   child: _getBoardImage(),
        //   color: Colors.blue,
        // ),
        _getBoardImage(),
        //Overlaying draggables/ dragTargets onto the squares
        Container(
          height: widget.size,
          width: widget.size,
          color: Color.fromARGB(80, 255, 0, 0),
          child: Column(children: [
            Row(children: <Widget>[
              Expanded(
                child: Image.asset(
                  'images/plate/rook_b.png',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/horse_b.png',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/elephant_b.png',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/advisor_b.png',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/king_b.png',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/advisor_b.png',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/elephant_b.png',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/pawn_b.png',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/cannon_b.png',
                  width: 60,
                  height: 60,
                ),
              ),
            ]),
            Row(children: <Widget>[
              Expanded(
                child: Image.asset(
                  'images/plate/rook_b.png',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/horse_b.png',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/elephant_b.png',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/advisor_b.png',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/king_b.png',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/advisor_b.png',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/elephant_b.png',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/pawn_b.png',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/cannon_b.png',
                  width: 60,
                  height: 60,
                ),
              ),
            ]),
          ]),
        ),
      ],
    );
  }

  /// Returns the board image
  Image _getBoardImage() {
    return Image.asset('images/board1.png');
  }
}
