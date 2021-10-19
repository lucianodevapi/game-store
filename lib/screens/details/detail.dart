import 'package:flutter/material.dart';
import 'package:game_store/models/game_class.dart';
import 'package:game_store/screens/details/widget/detail_sliver_delegate.dart';
import 'package:game_store/screens/details/widget/game_info.dart';

class DetailPage extends StatelessWidget {
  final Game game;

  const DetailPage({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
              game: game,
              expandedHeight: 360,
              roundedContainerHeight: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: GameInfo(game: game),
          ),
        ],
      ),
    );
  }
}
