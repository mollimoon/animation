import 'package:custom_animations/sections/square_widget.dart';
import 'package:custom_animations/sections/circle_widget.dart';
import 'package:custom_animations/sections/triangle_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: const [
                  ListWidget(),
                  Divider(height: 40, thickness: 2,),
                  FirstWidget(),
                  Divider(height: 40, thickness: 2,),
                  HeroWidget(),
                ],
              )
            ),
          ),
        ),
      ),
    );
  }
}


