import 'package:flutter/material.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  State<ListWidget> createState() => _ListWidgetState();
}


class _ListWidgetState extends State<ListWidget> {
  bool isClicked = true;
  double turns = 0.0;

  void _changeRotation() {
    setState(() => turns += 1.0 / 8.0);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            setState(() {
              isClicked = !isClicked;
              _changeRotation();
            });
          },
          child: Card(
            elevation: 5.0, //For shadow
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Show me what I want'),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AnimatedRotation(
                    turns: turns,
                    duration: const Duration(seconds: 1),
                    child: const Icon(Icons.add,
                ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        AnimatedContainer(
          height: isClicked ? 0 : 150,
          width: 200,
          duration: const Duration(milliseconds: 1000),
          curve: Curves.easeIn,
          child: Card(
              elevation: 5.0,
              child: Image.asset(
                'assets/images/triangle.png',
                height: 200,
              )),
        )
      ],
    );
  }
}
