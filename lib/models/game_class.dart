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
        name: 'Ori and The Blind Florest',
        type: 'Adventure',
        score: 4.8,
        download: 382,
        review: 324,
        desc:
            'A floresta de Nibel está morrendo. Após uma poderosa tempestade que iniciou uma série de eventos devastadores, um improvável herói deve fazer uma jornada para encontrar a sua coragem e confrontar um inimigo sombrio para salvar o seu lar. "Ori and the Blind Forest" conta a história de um jovem órfão destinado a feitos heróicos através de um jogo de ação e plataforma com um visual impressionante, criado pela Moon Studios para PC. Contando com um trabalho artístico pintado à mão, atuação de personagens meticulosamente animada e uma trilha sonora inteiramente orquestrada, "Ori and the Blind Forest" explora uma história profundamente emocional sobre amor e sacrifício, além da esperança que existe em todos nós.,',
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
        desc:
            'Michel Ancel, the celebrated creator of Rayman®, Beyond Good & Evil®, and the Raving Rabbids®, returns to unleash his innovative creativity on this new entry into the Rayman® franchise. When Rayman, Globox, and the Teensies discover a mysterious tent filled with captivating paintings, they are suddenly transported to a series of mythical new worlds! Join them as they run, jump, and slap their way through each world to get home, save the day, and discover the secrets of the legendary paintings!,',
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
