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
        Container(
          height: widget.size,
          width: widget.size,
          child: Image.asset(
            'images/board.jpg',
          ),
          color: Colors.blue,
        ),
        // Image.asset(
        //   'images/board.jpg',
        //   width: widget.size,
        //   height: widget.size,
        // ),
        //Overlaying draggables/ dragTargets onto the squares
        Container(
          height: widget.size,
          width: widget.size,
          color: Color.fromARGB(80, 255, 0, 0),
          child: Column(children: [
            Row(children: <Widget>[
              Expanded(
                child: Image.asset(
                  'images/plate/rook_b.gif',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/horse_b.gif',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/elephant_b.gif',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/advisor_b.gif',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/king_b.gif',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/advisor_b.gif',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/elephant_b.gif',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/pawn_b.gif',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/cannon_b.gif',
                  width: 60,
                  height: 60,
                ),
              ),
            ]),
            Row(children: <Widget>[
              Expanded(
                child: Image.asset(
                  'images/plate/rook_w.gif',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/horse_w.gif',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/elephant_w.gif',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/advisor_w.gif',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/king_w.gif',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/advisor_w.gif',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/elephant_w.gif',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/pawn_w.gif',
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'images/plate/cannon_w.gif',
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
}
