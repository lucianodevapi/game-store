import 'package:flutter/material.dart';
import 'package:game_store/models/game_class.dart';

class GameHeader extends StatelessWidget {
  final Game game;

  const GameHeader({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Image.asset(
            game.icon,
            width: 80,
          ),
          const SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                game.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                game.type,
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  _buildIconText(
                    text: game.score.toString(),
                    icon: Icons.star,
                    color: Colors.amber,
                  ),
                  const SizedBox(width: 30),
                  _buildIconText(
                    text: game.download.toString(),
                    icon: Icons.file_download_outlined,
                    color: Colors.red,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildIconText(
      {required String text, required IconData icon, required Color color}) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 15,
        ),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
