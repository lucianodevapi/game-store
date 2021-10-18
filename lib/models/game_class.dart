class Game {
  String bgImage = '';
  String icon = '';
  String name = '';
  String type = '';
  num score = 0;
  num download = 0;
  num review = 0;
  String desc = '';
  List<String> imgs = [];

  Game({
    required this.bgImage,
    required this.icon,
    required this.name,
    required this.type,
    required this.score,
    required this.download,
    required this.review,
    required this.desc,
    required this.imgs,
  });

  static List<Game> generationGames() {
    return [
      Game(
        bgImage: 'assets/images/ori1.jpg',
        icon: 'assets/images/ori_logo.png',
        name: 'Ori and The Last Blind Florest',
        type: 'Adventure',
        score: 4.8,
        download: 382,
        review: 324,
        desc: 'The litle spirit Ori is no stranger,',
        imgs: [
          'assets/images/ori2.jpg',
          'assets/images/ori3.jpg',
          'assets/images/ori4.jpg',
          'assets/images/ori5.jpg',
        ],
      ),
      Game(
        bgImage: 'assets/images/rl1.jpg',
        icon: 'assets/images/rl_logo.png',
        name: 'Rayman Legend',
        type: 'Adventure',
        score: 4.7,
        download: 226,
        review: 148,
        desc: 'You and your friends togeder,',
        imgs: [
          'assets/images/rl2.jpg',
          'assets/images/rl3.jpg',
          'assets/images/rl4.jpg',
          'assets/images/rl5.jpg',
        ],
      ),
    ];
  }
}
