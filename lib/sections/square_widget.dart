import 'package:flutter/material.dart';
import 'package:custom_animations/hero_screen.dart';
class HeroWidget extends StatefulWidget {
  const HeroWidget({Key? key}) : super(key: key);

  @override
  State<HeroWidget> createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Hero(
              tag: 'square',
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const HeroScreen();
                    }),
                  );
                },
                child: Image.asset(
                  'assets/images/square.png',
                  height: 180,
                ),
              )),
        ),
      ),
    );
  }
}
