import 'package:flutter/material.dart';
import 'package:game_store/screens/home/widgets/popular_game.dart';

import 'newest_game.dart';

class Categorys extends StatelessWidget {
  Categorys({Key? key}) : super(key: key);

  final list = [
    {
      'icon': Icons.track_changes_outlined,
      'color': const Color(0XFF605CF4),
      'title': 'Arcade'
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': const Color(0XFFFC77A6),
      'title': 'Rancing'
    },
    {
      'icon': Icons.casino_outlined,
      'color': const Color(0XFF4391FF),
      'title': 'Strategy'
    },
    {
      'icon': Icons.sports_esports,
      'color': const Color(0XFF7182F2),
      'title': 'More'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0XFFF6F8FF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            padding: const EdgeInsets.all(25),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) => Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: list[index]['color'] as Color,
                    ),
                    child: Icon(
                      list[index]['icon'] as IconData,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    list[index]['title'] as String,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              separatorBuilder: (_, index) => const SizedBox(width: 33),
              itemCount: list.length,
            ),
          ),
          _buildTitle('Popular Game'),
          PopularGame(),
          _buildTitle('Newest Game'),
          NewestGame(),
        ],
      ),
    );
  }

  Widget _buildTitle(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      width: double.maxFinite,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
