import 'package:flutter/material.dart';
import 'board_rank.dart';

class Board extends StatefulWidget {
  Board({Key key, this.width, this.height}) : super(key: key);

  /// Size of chessboard
  final double width;
  final double height;

  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: Stack(
        children: <Widget>[
          Container(
            height: widget.height,
            width: widget.width,
            child: Image.asset(
              'images/board.jpg',
              fit: BoxFit.cover,
            ),
          ),
          //Overlaying draggables/ dragTargets onto the squares
          Center(
            child: Container(
              height: widget.height,
              width: widget.width,
              child: Column(children: [
                BoardRank(
                  children: ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
                ),
                BoardRank(
                  children: ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
                ),
                BoardRank(
                  children: ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
                ),
                BoardRank(
                  children: ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
                ),
                BoardRank(
                  children: ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
                ),
                BoardRank(
                  children: ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
                ),
                BoardRank(
                  children: ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
                ),
                BoardRank(
                  children: ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
                ),
                BoardRank(
                  children: ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
                ),
                BoardRank(
                  children: ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
