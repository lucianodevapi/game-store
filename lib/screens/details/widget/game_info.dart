import 'package:flutter/material.dart';
import 'package:game_store/models/game_class.dart';
import 'package:game_store/screens/details/widget/game_description.dart';
import 'package:game_store/screens/details/widget/game_galery.dart';
import 'package:game_store/screens/details/widget/game_header.dart';
import 'package:game_store/screens/details/widget/game_review.dart';

class GameInfo extends StatelessWidget {
  final Game game;

  const GameInfo({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          GameHeader(game: game),
          GameGalery(game: game),
          GameDescription(game: game),
          GameReview(game: game),
        ],
      ),
    );
  }
}
