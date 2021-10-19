import 'package:flutter/material.dart';
import 'package:game_store/constants/colors.dart';
import 'package:game_store/models/game_class.dart';
import 'package:readmore/readmore.dart';

class GameDescription extends StatelessWidget {
  final Game game;
  const GameDescription({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ReadMoreText(
        game.desc,
        trimLines: 3,
        colorClickableText: kPrimary,
        trimMode: TrimMode.Line,
        style: TextStyle(
          color: Colors.grey.withOpacity(0.7),
          height: 1.5,
        ),
        trimCollapsedText: 'Leia mais',
        trimExpandedText: 'Leia menos',
      ),
    );
  }
}
