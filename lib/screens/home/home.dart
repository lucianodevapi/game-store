import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:game_store/constants/colors.dart';
import 'package:game_store/screens/home/widgets/categorys.dart';
import 'package:game_store/screens/home/widgets/header.dart';
import 'package:game_store/screens/home/widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 50),
              child: Image.asset(
                'assets/images/bg_liquid.png',
                width: 200,
              ),
            ),
            Positioned(
              right: 0,
              top: 200,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: const Offset(180, 100),
                child: Image.asset(
                  'assets/images/bg_liquid.png',
                  width: 200,
                ),
              ),
            ),
            Column(
              children: [
                const Header(),
                const Search(),
                Categorys(),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: _buildButtomNavigationBar(),
    );
  }

  Widget _buildButtomNavigationBar() {
    return Container(
      color: const Color(0XFFF6F8FF),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            //backgroundColor: Colors.white,
            selectedItemColor: kPrimary,
            unselectedItemColor: Colors.grey.withOpacity(0.7),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(
                label: 'home',
                icon: Icon(
                  Icons.home_rounded,
                  size: 50,
                ),
              ),
              _buildItem(
                text: 'Application',
                icon: Icons.more_horiz_outlined,
              ),
              _buildItem(
                text: 'Film',
                icon: Icons.play_arrow_outlined,
              ),
              _buildItem(
                text: 'Book',
                icon: Icons.auto_stories_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildItem(
      {required String text, required IconData icon}) {
    return BottomNavigationBarItem(
      label: text,
      icon: Container(
        margin: const EdgeInsets.only(bottom: 5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}
